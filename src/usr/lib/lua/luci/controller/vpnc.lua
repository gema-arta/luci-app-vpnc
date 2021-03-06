--[[
LuCI - Lua Configuration Interface

Copyright 2008 Steven Barth <steven@midlink.org>
Copyright 2008 Jo-Philipp Wich <xm@leipzig.freifunk.net>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

$Id: vpnc.lua 7362 2011-08-12 13:16:27Z jow $
]]--

module("luci.controller.vpnc", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/vpnc") then
		return
	end

	local page

	page = entry({"admin", "services", "vpnc"}, cbi("vpnc"), _("VPNC"))
	page.i18n = "vpnc"
	page.dependent = true
end
