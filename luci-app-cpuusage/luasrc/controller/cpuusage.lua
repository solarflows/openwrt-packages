module("luci.controller.cpuusage", package.seeall)

function index()
	entry({"admin", "status", "cpuusage"}, cbi("cpuusage"), _("CPU Usage"), 10).dependent = true
	entry({"admin", "status", "cpuusage", "cpu_usage"}, call("cpu_usage"))
end

function cpu_usage()
	local interrupts_log_data={}
	interrupts_log_data.syslog=luci.sys.exec("/usr/bin/cpuusage 2>/dev/null")
	luci.http.prepare_content("application/json")
	luci.http.write_json(interrupts_log_data)
end


