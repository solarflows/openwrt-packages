-- Copyright 2022 wulishui <wulishui@gmail.com>
-- Licensed to the public under the Apache License 2.0.
local m

m = Map("cpuusage", translate("CPU Usage"))

m:section(SimpleSection).template = "cpu_usage"

return m

