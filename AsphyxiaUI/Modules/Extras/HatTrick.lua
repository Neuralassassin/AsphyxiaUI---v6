---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

if( C["intmodules"]["hattrick"] ~= true ) then return end

local GameTooltip = GameTooltip

local AsphyxiaUIHelmCheck = CreateFrame( "CheckButton", "AsphyxiaUIHelmCheck", PaperDollFrame, "OptionsCheckButtonTemplate" )
AsphyxiaUIHelmCheck:ClearAllPoints()
AsphyxiaUIHelmCheck:SetWidth( 22 )
AsphyxiaUIHelmCheck:SetHeight( 22 )
AsphyxiaUIHelmCheck:SetPoint( "TOPLEFT", CharacterHeadSlot, "BOTTOMRIGHT", 5, 5 )
AsphyxiaUIHelmCheck:SetScript( "OnClick", function()
	ShowHelm( not ShowingHelm() )
end )
AsphyxiaUIHelmCheck:SetScript( "OnEnter", function( self )
	GameTooltip:SetOwner( self, "ANCHOR_RIGHT" )
	GameTooltip:SetText( OPTION_TOOLTIP_SHOW_HELM )
end )
AsphyxiaUIHelmCheck:SetScript( "OnLeave", function()
	GameTooltip:Hide()
end )
AsphyxiaUIHelmCheck:SetScript( "OnEvent", function()
	AsphyxiaUIHelmCheck:SetChecked( ShowingHelm() )
end )
AsphyxiaUIHelmCheck:RegisterEvent( "UNIT_MODEL_CHANGED" )
AsphyxiaUIHelmCheck:SetToplevel( true )

local AsphyxiaUICloakCheck = CreateFrame( "CheckButton", "AsphyxiaUICloakCheck", PaperDollFrame, "OptionsCheckButtonTemplate" )
AsphyxiaUICloakCheck:ClearAllPoints()
AsphyxiaUICloakCheck:SetWidth( 22 )
AsphyxiaUICloakCheck:SetHeight( 22 )
AsphyxiaUICloakCheck:SetPoint( "TOPLEFT", CharacterBackSlot, "BOTTOMRIGHT", 5, 5 )
AsphyxiaUICloakCheck:SetScript( "OnClick", function()
	ShowCloak( not ShowingCloak() )
end )
AsphyxiaUICloakCheck:SetScript( "OnEnter", function( self )
	GameTooltip:SetOwner( self, "ANCHOR_RIGHT" )
	GameTooltip:SetText( OPTION_TOOLTIP_SHOW_CLOAK )
end )
AsphyxiaUICloakCheck:SetScript( "OnLeave", function()
	GameTooltip:Hide()
end )
AsphyxiaUICloakCheck:SetScript( "OnEvent", function()
	AsphyxiaUICloakCheck:SetChecked( ShowingCloak() )
end )
AsphyxiaUICloakCheck:RegisterEvent( "UNIT_MODEL_CHANGED" )
AsphyxiaUICloakCheck:SetToplevel( true )

AsphyxiaUIHelmCheck:SetChecked( ShowingHelm() )
AsphyxiaUICloakCheck:SetChecked( ShowingCloak() )

AsphyxiaUIHelmCheck:SetFrameLevel( 31 )
AsphyxiaUICloakCheck:SetFrameLevel( 31 )
