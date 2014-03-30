--[[
Kill background text (multiple options) [v3] (30/02/2014)
Written by AFRLme [Lee Clarke]
-- + --
alternatingfrequencies@hotmail.com | skype @ AFRLme
-- + --
This script is donation optional. In game credit is non-negotiable.
You are free to: ¹ use it in your game(s). ² modify the script.
Do not remove - or edit - this comment block.
--]]

-- * tables * --
txt = {} -- create table
txt["_temporary_"] = "" -- set table as temporary

-- * function which kills active background text (1 = all, 2 =  all characters, 3 = current character) * --
function killText(val)
 for i = table.maxn(txt), 1, -1 do -- loop through txt table in reverse (entry total to 1)
  if val == 1 and txt[i]:getBool(VTextActive) then txt[i]:setValue(VTextActive, false) -- all background text
  elseif val == 2 and txt[i]:getBool(VTextActive) and txt[i]:getLink(VTextOwner):getId().tableId == eCharacters then txt[i]:setValue(VTextActive, false) -- all character
  elseif val == 3 and txt[i]:getBool(VTextActive) and txt[i]:getLink(VTextOwner):getName() == game:getLink(VGameCurrentCharacter):getName() then txt[i]:setValue(VTextActive, false); break -- current character
  end
 end
end

-- * on text display function * --
function hText(text)
 if text:getBool(VTextBackground) then table.insert(txt, text) end -- if text is background text, insert into txt table
 -- * --
 return false -- prevent text from being repositioned
end

-- * function for text finished * --
function eText(text)
 for i = table.maxn(txt), 1, -1 do if not txt[i]:getBool(VTextActive) then table.remove(txt, i) end end -- if text is inactive, remove from txt table
end

-- * event handlers * --
registerHookFunction("setTextPosition", "hText") -- event handler for displayed text
registerEventHandler("textStopped", "eText") -- event handler for finished text
