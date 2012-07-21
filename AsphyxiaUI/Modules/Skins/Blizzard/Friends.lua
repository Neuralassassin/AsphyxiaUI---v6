---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

local function SkinFrames( self, event, addon )
	if( addon == "AsphyxiaUI" ) then
		FriendsFrame:SetTemplate( "Transparent" )
		FriendsFrame:CreateShadow( "Default" )

		AddFriendFrame:SetTemplate( "Transparent" )
		AddFriendFrame:CreateShadow( "Default" )

		ScrollOfResurrectionSelectionFrame:SetTemplate( "Transparent" )
		ScrollOfResurrectionSelectionFrame:CreateShadow( "Default" )
	end
end

local Init = CreateFrame( "Frame" )
Init:RegisterEvent( "ADDON_LOADED" )
Init:SetScript( "OnEvent", SkinFrames )