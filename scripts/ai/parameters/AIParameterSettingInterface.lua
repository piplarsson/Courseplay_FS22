--- Interface that shows all functions, that need to be implemented for settings!
---@class AIParameterSettingInterface
AIParameterSettingInterface = CpObject()

function AIParameterSettingInterface:init()
	
end

-------------------------------------------------
--- Giants functions form AIParameter
-------------------------------------------------

function AIParameterSettingInterface:readStream(streamId, connection)

end

function AIParameterSettingInterface:writeStream(streamId, connection)

end

function AIParameterSettingInterface:saveToXMLFile(xmlFile, key, usedModNames)
	
end

function AIParameterSettingInterface:loadFromXMLFile(xmlFile, key)
	
end

function AIParameterSettingInterface:getType()

end

function AIParameterSettingInterface:getIsValid()

end

function AIParameterSettingInterface:setIsValid(isValid)
	
end

function AIParameterSettingInterface:getCanBeChanged()

end

function AIParameterSettingInterface:getString()

end

-------------------------------------------------
--- Settings implementation function needed
-------------------------------------------------

--- Reference setting name.
function AIParameterSettingInterface:getName()
	
end

--- Gets the setting title translation.
function AIParameterSettingInterface:getTitle()
	
end

--- Gets the setting tooltip translation.
function AIParameterSettingInterface:getTooltip()
	
end

function AIParameterSettingInterface:getIsDisabled()
	
end

function AIParameterSettingInterface:getIsVisible()
	
end

function AIParameterSettingInterface:getIsUserSetting()
	
end


-- Is the current value same as the param?
function AIParameterSettingInterface:is(value)
	
end

-- Get the current text key (for the logs, for example)
function AIParameterSettingInterface:__tostring()
	
end

--- Callback called on value change.
function AIParameterSettingInterface:onChange()
	
end


--- Called form extern to update the setting value and validate it.
function AIParameterSettingInterface:refresh()
	
end

function AIParameterSettingInterface:getDebugString()
		
end

--- Sets a float value relative to the incremental.
function AIParameterSettingInterface:setFloatValue(value, epsilon)
	
end

--- Sets a value.
function AIParameterSettingInterface:setValue(value)
	
end

function AIParameterSettingInterface:setDefault(noEventSend)
	
end

--- Gets a specific value.
function AIParameterSettingInterface:getValue()
	
end

--- Clones the setting, for creating dynamic setting table in each vehicle!
function AIParameterSettingInterface:clone(...)
	--return AIParameterSettingInterface.new(self.data, ...)
end

--- Copies the value to another setting after cloning!
function AIParameterSettingInterface:copy(setting)

end

--- Applies title/tooltip texts for the gui element.
function AIParameterSettingInterface:setGenericGuiElementValues(guiElement)
	
end

--- Enables updating of the setting value/texts and get access to the onClick callbacks.
function AIParameterSettingInterface:setGuiElement(guiElement, titleGuiElement)
	
end

--- Reset after the gui element get's closed/destroyed.
function AIParameterSettingInterface:resetGuiElement()
	
end

--- Raises an event and sends the callback string to the Settings controller class.
function AIParameterSettingInterface:raiseCallback(callbackStr, ...)
	--[[
	if self.klass ~= nil and self.klass.raiseCallback and callbackStr then
		self:debug("raised Callback %s", callbackStr)
		--- If the setting is bound to a setting, then call the specialization function with self as vehicle.
		if self.vehicle ~= nil then 
			self.klass.raiseCallback(self.vehicle, callbackStr, self, ...)
		else
			self.klass:raiseCallback(callbackStr, self, ...)
		end
	end
	]]--
end

function AIParameterSettingInterface:hasCallback(callbackStr)
	--[[
	if self.klass ~= nil and callbackStr then
		if self.klass[callbackStr] ~= nil then 
			return true
		end
	end
	]]--
end

function AIParameterSettingInterface:getCallback(callbackStr, ...)
	--[[
	if self:hasCallback(callbackStr) then
		if self.vehicle ~= nil then 
			return self.klass[callbackStr](self.vehicle, self, ...)
		else
			return self.klass[callbackStr](self.klass, self, ...)
		end
	end
	]]--
end

function AIParameterSettingInterface:raiseDirtyFlag()
	--[[
	if not self:getIsUserSetting() then
		if self.klass and self.klass.raiseDirtyFlag then
			if self.vehicle ~= nil then 
				self.klass.raiseDirtyFlag(self.vehicle, self)
			else
				self.klass:raiseDirtyFlag(self)
			end
		end
	end
	]]--
end

function AIParameterSettingInterface:debug(str, ...)
	--[[
	local name = string.format("%s: ", self.name)
	if self.vehicle == nil then
		CpUtil.debugFormat(CpUtil.DBG_HUD, name..str, ...)
	else 
		CpUtil.debugVehicle(CpUtil.DBG_HUD, self.vehicle, name..str, ...)
	end
	]]--
end