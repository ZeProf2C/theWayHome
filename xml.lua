local xml2lua = require("xmlToLua.xml2lua")
local handler = require("xmlToLua.xmlhandler.tree")

local parser = xml2lua.parser(handler)

local controlsXml = xml2lua.loadfile("ressources/data/controls.xml")
parse:parse(controlsXml)

controls = handler.root.controls