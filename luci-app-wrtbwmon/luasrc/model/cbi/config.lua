local m = Map("wrtbwmon", "流量统计 - 配置")

local s = m:section(NamedSection, "general", "wrtbwmon", "常规选项")

local enabled = s:option(Flag, "enabled", translate("Enable"),  translate("禁用后需要重启系统才会真正停止运行。"))
enabled.rmempty = false

bandwidth = s:option( Value, "bandwidth", translate("默认带宽"), translate("用于统计流量占用比率，单位为MB（并非电信商表示的“兆”）。"))
bandwidth:value("1M")
bandwidth:value("20M")
bandwidth:value("100M")
bandwidth:value("200M")
bandwidth:value("500M")
bandwidth:value("1000M")
bandwidth.default = '1M'

local persist = s:option(Flag, "persist", "可保留数据",  "启用本项可将统计数据保存至 /etc/config 目录，即使固件更新后依然可以保留原有数据。")
persist.rmempty = false
function persist.write(self, section, value)
    if value == '1' and nixio.fs.access("/tmp/usage.db") then
        luci.sys.call("/etc/init.d/wrtbwmon stop ; mv /tmp/usage.*db /etc/config/ 2>/dev/null ; uci -q set wrtbwmon.general.path='/etc/config/usage.db' ; uci commit wrtbwmon ; /etc/init.d/wrtbwmon start")
    elseif value == '0' and nixio.fs.access("/etc/config/usage.db") then
        luci.sys.call("/etc/init.d/wrtbwmon stop ; mv /etc/config/usage.*db /tmp/ 2>/dev/null ; uci -q set wrtbwmon.general.path='/tmp/usage.db' ; uci commit wrtbwmon ; /etc/init.d/wrtbwmon start")
    end
    return Flag.write(self, section ,value)
end

local resetdata = s:option(Flag, "resetdata", "每天重新计数",  "启用本项会在00:00定时重置数据然后重新开始计数（如“可保留数据”启用此功能即失效）。")
resetdata:depends("persist", 0)
resetdata.rmempty = true

return m

