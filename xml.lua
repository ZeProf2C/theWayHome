local xml2lua = require("xmlToLua.xml2lua")
local handler = require("xmlToLua.xmlhandler.tree")

local parser = xml2lua.parser(handler)

local controlsXml = xml2lua.loadFile("ressources/data/controls.xml")
local scoresXml = xml2lua.loadFile("ressources/data/scores.xml")

parser:parse(scoresXml)
parser:parse(controlsXml)

controls = handler.root.controls
scores = handler.root.scores