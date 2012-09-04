---------------------------------------------------------------------------------------------
-- AddOn Name: AsphyxiaUI 6.0.0
-- License: MIT
-- Author: Sinaris @ Das Syndikat, Vaecia @ Blackmoore
-- Description: AsphyxiaUI, Editied Tukui Layout
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

if( C["intmodules"]["autorole"] ~= true ) then return end

local function SetRole()
	local spec = GetSpecialization()
	if( S.level >= 10 ) then
		if( spec == nil ) then
			UnitSetRole( "player", "No Role" )
		elseif( spec ~= nil ) then
			if( GetNumGroupMembers() > 0 ) then
				local role = GetSpecializationRole( spec )
				UnitSetRole( "player", role )
			end
		end
	end
end

local frame = CreateFrame( "Frame" )
frame:RegisterEvent( "PLAYER_ENTERING_BATTLEGROUND" )
frame:RegisterEvent( "ACTIVE_TALENT_GROUP_CHANGED" )
frame:RegisterEvent( "GROUP_ROSTER_UPDATE" )
frame:RegisterEvent( "PLAYER_TALENT_UPDATE" )
frame:SetScript( "OnEvent", SetRole )

RolePollPopup:SetScript( "OnShow", function()
	RolePollPopupAcceptButton:Click()
end )