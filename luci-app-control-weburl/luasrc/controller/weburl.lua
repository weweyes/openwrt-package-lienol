module("luci.controller.weburl", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/weburl") then return end

    entry({"admin", "control"}, firstchild(), "Control", 50).dependent = false
    entry({"admin", "control", "weburl"}, cbi("weburl"), _("网址过滤"), 12).dependent =
        true
end

