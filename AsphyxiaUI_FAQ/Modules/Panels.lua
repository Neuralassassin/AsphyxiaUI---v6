---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

------------------------------
-- MainFrame
------------------------------
local AsphyxiaUIFAQMainFrame = CreateFrame( "Frame", "AsphyxiaUIFAQMainFrame", UIParent )
AsphyxiaUIFAQMainFrame:SetSize( 650, 350 )
AsphyxiaUIFAQMainFrame:SetPoint( "CENTER" )
AsphyxiaUIFAQMainFrame:SetTemplate( "Transparent" )
AsphyxiaUIFAQMainFrame:CreateShadow( "Default" )
--AsphyxiaUIFAQMainFrame:Hide()
AsphyxiaUIFAQMainFrame:SetFrameLevel( 10 )
AsphyxiaUIFAQMainFrame:SetFrameStrata( "BACKGROUND" )

local AsphyxiaUIFAQMainFrameIconTopLeft = CreateFrame( "Frame", "AsphyxiaUIFAQMainFrameIconTopLeft", AsphyxiaUIFAQMainFrame )
AsphyxiaUIFAQMainFrameIconTopLeft:Size( 58 )
AsphyxiaUIFAQMainFrameIconTopLeft:Point( "BOTTOMLEFT", AsphyxiaUIFAQMainFrame, "TOPLEFT", 0, 3 )
AsphyxiaUIFAQMainFrameIconTopLeft:SetTemplate( "Default" )
AsphyxiaUIFAQMainFrameIconTopLeft:CreateShadow( "Default" )

AsphyxiaUIFAQMainFrameIconTopLeft.Texture = AsphyxiaUIFAQMainFrameIconTopLeft:CreateTexture( nil, "ARTWORK" )
AsphyxiaUIFAQMainFrameIconTopLeft.Texture:Point( "TOPLEFT", 2, -2 )
AsphyxiaUIFAQMainFrameIconTopLeft.Texture:Point( "BOTTOMRIGHT", -2, 2 )
AsphyxiaUIFAQMainFrameIconTopLeft.Texture:SetTexture( C["media"]["logo"] )

local AsphyxiaUIFAQMainFrameIconTopRight = CreateFrame( "Frame", "AsphyxiaUIFAQMainFrameIconTopLeft", AsphyxiaUIFAQMainFrame )
AsphyxiaUIFAQMainFrameIconTopRight:Size( 58 )
AsphyxiaUIFAQMainFrameIconTopRight:Point( "BOTTOMRIGHT", AsphyxiaUIFAQMainFrame, "TOPRIGHT", 0, 3 )
AsphyxiaUIFAQMainFrameIconTopRight:SetTemplate( "Default" )
AsphyxiaUIFAQMainFrameIconTopRight:CreateShadow( "Default" )

AsphyxiaUIFAQMainFrameIconTopRight.Texture = AsphyxiaUIFAQMainFrameIconTopRight:CreateTexture( nil, "ARTWORK" )
AsphyxiaUIFAQMainFrameIconTopRight.Texture:Point( "TOPLEFT", 2, -2 )
AsphyxiaUIFAQMainFrameIconTopRight.Texture:Point( "BOTTOMRIGHT", -2, 2 )
AsphyxiaUIFAQMainFrameIconTopRight.Texture:SetTexture( C["media"]["logo"] )

local AsphyxiaUIFAQMainFrameTitle = CreateFrame( "Frame", "TukuiInstallTitle", AsphyxiaUIFAQMainFrame )
AsphyxiaUIFAQMainFrameTitle:Size( AsphyxiaUIFAQMainFrame:GetWidth( ) - 122, 30 )
AsphyxiaUIFAQMainFrameTitle:Point( "BOTTOM", AsphyxiaUIFAQMainFrame, "TOP", 0, 3 )
AsphyxiaUIFAQMainFrameTitle:SetTemplate( "Transparent" )
AsphyxiaUIFAQMainFrameTitle:CreateShadow( "Default" )


------------------------------
-- MainFrame - Navigation
------------------------------
local AsphyxiaUIFAQMainFrameNavigation = CreateFrame( "Frame", "AsphyxiaUIFAQMainFrameNavigation", AsphyxiaUIFAQMainFrame )
AsphyxiaUIFAQMainFrameNavigation:SetSize( 180, 342 )
AsphyxiaUIFAQMainFrameNavigation:SetPoint( "LEFT", 4, 0 )
AsphyxiaUIFAQMainFrameNavigation:SetTemplate( "Transparent" )


------------------------------
-- MainFrame - Content
------------------------------
local AsphyxiaUIFAQMainFrameContent = CreateFrame( "Frame", "AsphyxiaUIFAQMainFrameContent", AsphyxiaUIFAQMainFrame )
AsphyxiaUIFAQMainFrameContent:SetSize( 458, 342 )
AsphyxiaUIFAQMainFrameContent:SetPoint( "RIGHT", -4, 0 )
AsphyxiaUIFAQMainFrameContent:SetTemplate( "Transparent" )

local AsphyxiaUIFAQMainFrameContentScrollFrame = CreateFrame( "ScrollFrame", "AsphyxiaUIFAQMainFrameContentScrollFrame", AsphyxiaUIFAQMainFrameContent, "UIPanelScrollFrameTemplate" )
AsphyxiaUIFAQMainFrameContentScrollFrame:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContent, "TOPLEFT", 4, -4 )
AsphyxiaUIFAQMainFrameContentScrollFrame:SetPoint( "BOTTOMRIGHT", AsphyxiaUIFAQMainFrameContent, "BOTTOMRIGHT", -27, 4 )
AsphyxiaUIFAQMainFrameContentScrollFrameScrollBar:SkinScrollBar()

local AsphyxiaUIFAQMainFrameContentScrollFrameBackground = CreateFrame( "Frame", "AsphyxiaUIFAQMainFrameContentScrollFrameBackground", AsphyxiaUIFAQMainFrameContentScrollFrame )
AsphyxiaUIFAQMainFrameContentScrollFrameBackground:SetPoint( "TOPLEFT" )
AsphyxiaUIFAQMainFrameContentScrollFrameBackground:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrame:GetWidth() )
AsphyxiaUIFAQMainFrameContentScrollFrameBackground:SetHeight( AsphyxiaUIFAQMainFrameContentScrollFrame:GetHeight() )
AsphyxiaUIFAQMainFrameContentScrollFrame:SetScrollChild( AsphyxiaUIFAQMainFrameContentScrollFrameBackground )


------------------------------
-- MainFrame - Buttons
------------------------------
local AsphyxiaUIFAQMainFrameNavigationButtonAttributes = {
	[1] = { "/afaq 1" },
	[2] = { "/afaq 2" },
	[3] = { "/afaq 3" },
	[4] = { "/afaq 4" },
	[5] = { "/afaq 5" },
	[6] = { "/afaq 6" },
	[7] = { "/afaq 7" },
	[8] = { "/afaq 8" },
	[9] = { "/afaq 9" },
}

local AsphyxiaUIFAQMainFrameNavigationButtonTexts = {
	[1] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Informations" },
	[2] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Unitframes" },
	[3] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Actionbars" },
	[4] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Panels, Nameplates" },
	[5] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Minimap, Chat" },
	[6] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Extra AddOns, Skins" },
	[7] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Reported Issues" },
	[8] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Credits" },
	[9] = { S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. "Donations" },
}

local AsphyxiaUIFAQMainFrameNavigationButton = CreateFrame( "Button", "AsphyxiaUIMainFrameNavigationButton", AsphyxiaUIFAQMainFrameNavigation )
for i = 1, 9 do
	AsphyxiaUIFAQMainFrameNavigationButton[i] = CreateFrame( "Button", "AsphyxiaUIFAQMainFrameNavigationButton" .. i, AsphyxiaUIFAQMainFrameNavigation, "SecureActionButtonTemplate" )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:Size( AsphyxiaUIFAQMainFrameNavigation:GetWidth() - 8, 24 )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:SetTemplate( "Default" )

	AsphyxiaUIFAQMainFrameNavigationButton[i].Text = S.SetFontString( AsphyxiaUIFAQMainFrameNavigationButton[i], S.CreateFontString( true ) )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:SetFrameLevel( AsphyxiaUIFAQMainFrameNavigation:GetFrameLevel() + 1 )
	AsphyxiaUIFAQMainFrameNavigationButton[i].Text:Point( "CENTER", AsphyxiaUIFAQMainFrameNavigationButton[i], "CENTER", 0, 0 )
	AsphyxiaUIFAQMainFrameNavigationButton[i].Text:SetText( S.RGBToHex( unpack( C["media"].datatextcolor2 ) ) .. L.Faq_BUTTONS_TEXT[i] )

	if( i == 1 ) then
		AsphyxiaUIFAQMainFrameNavigationButton[i]:Point( "TOP", AsphyxiaUIFAQMainFrameNavigation, "TOP", 0, -5 )
	else
		AsphyxiaUIFAQMainFrameNavigationButton[i]:Point( "TOP", AsphyxiaUIFAQMainFrameNavigationButton[i - 1], "BOTTOM", 0, -3 )
	end
	AsphyxiaUIFAQMainFrameNavigationButton[i]:SetAttribute( "type", "macro" )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:SetAttribute( "macrotext", unpack( AsphyxiaUIFAQMainFrameNavigationButtonAttributes[i] ) )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:CreateOverlay( AsphyxiaUIFAQMainFrameNavigationButton[i] )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:HookScript( "OnEnter", S.SetModifiedBackdrop )
	AsphyxiaUIFAQMainFrameNavigationButton[i]:HookScript( "OnLeave", S.SetOriginalBackdrop )
end


------------------------------
-- MainFrame - Close Button
------------------------------
local AsphyxiaUIFAQMainFrameCloseButton = CreateFrame( "Button", "AsphyxiaUIFAQMainFrameCloseButton", AsphyxiaUIFAQMainFrameContentScrollFrameBackground, "UIPanelCloseButton" )
AsphyxiaUIFAQMainFrameCloseButton:SetPoint( "TOPRIGHT", AsphyxiaUIFAQMainFrameContentScrollFrameBackground, "TOPRIGHT" )
S.SkinCloseButton( AsphyxiaUIFAQMainFrameCloseButton )
AsphyxiaUIFAQMainFrameCloseButton:SetScript( "OnClick", function()
	AsphyxiaUIFAQMainFrame:Hide()
end )


------------------------------
-- MainFrame - Text
------------------------------
local AsphyxiaUIFAQMainFrameContentTitle = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentTitle:SetFont( C["media"].font, 14, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentTitle:SetPoint( "TOP", AsphyxiaUIFAQMainFrameContentScrollFrameBackground, "TOP", 0, -10 )

local AsphyxiaUIFAQMainFrameContentText1 = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentText1:SetJustifyH( "LEFT" )
AsphyxiaUIFAQMainFrameContentText1:SetFont( C["media"].font, 12, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentText1:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrameBackground:GetWidth() - 20 )
AsphyxiaUIFAQMainFrameContentText1:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContentScrollFrameBackground, "TOPLEFT", 10, -45 )

local AsphyxiaUIFAQMainFrameContentText2 = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentText2:SetJustifyH( "LEFT" )
AsphyxiaUIFAQMainFrameContentText2:SetFont( C["media"].font, 12, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentText2:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrameBackground:GetWidth() - 30 )
AsphyxiaUIFAQMainFrameContentText2:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContentText1, "BOTTOMLEFT", 0, -20 )

local AsphyxiaUIFAQMainFrameContentText3 = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentText3:SetJustifyH( "LEFT" )
AsphyxiaUIFAQMainFrameContentText3:SetFont( C["media"].font, 12, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentText3:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrameBackground:GetWidth() - 30 )
AsphyxiaUIFAQMainFrameContentText3:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContentText2, "BOTTOMLEFT", 0, -20 )

local AsphyxiaUIFAQMainFrameContentText4 = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentText4:SetJustifyH( "LEFT" )
AsphyxiaUIFAQMainFrameContentText4:SetFont( C["media"].font, 12, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentText4:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrameBackground:GetWidth() - 30 )
AsphyxiaUIFAQMainFrameContentText4:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContentText3, "BOTTOMLEFT", 0, -20 )

local AsphyxiaUIFAQMainFrameContentText5 = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentText5:SetJustifyH( "LEFT" )
AsphyxiaUIFAQMainFrameContentText5:SetFont( C["media"].font, 12, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentText5:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrameBackground:GetWidth() - 30 )
AsphyxiaUIFAQMainFrameContentText5:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContentText4, "BOTTOMLEFT", 0, -20 )

local AsphyxiaUIFAQMainFrameContentText6 = AsphyxiaUIFAQMainFrameContentScrollFrameBackground:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIFAQMainFrameContentText6:SetJustifyH( "LEFT" )
AsphyxiaUIFAQMainFrameContentText6:SetFont( C["media"].font, 12, "THINOUTLINE" )
AsphyxiaUIFAQMainFrameContentText6:SetWidth( AsphyxiaUIFAQMainFrameContentScrollFrameBackground:GetWidth() - 30 )
AsphyxiaUIFAQMainFrameContentText6:SetPoint( "TOPLEFT", AsphyxiaUIFAQMainFrameContentText5, "BOTTOMLEFT", 0, -20 )


------------------------------
-- MainFrame - Textfunctions
------------------------------
local AsphyxiaUIFAQMainFrameContentBuildDefault = function()
	AsphyxiaUIFAQMainFrameContentTitle:SetText( L.Faq_CONTENT_TEXT_TITLE_0 )
	AsphyxiaUIFAQMainFrameContentText1:SetText( L.Faq_CONTENT_TEXT_FIELD_0_1 )
	AsphyxiaUIFAQMainFrameContentText2:SetText( L.Faq_CONTENT_TEXT_FIELD_0_2 )
	AsphyxiaUIFAQMainFrameContentText3:SetText( L.Faq_CONTENT_TEXT_FIELD_0_3 )
	AsphyxiaUIFAQMainFrameContentText4:SetText( L.Faq_CONTENT_TEXT_FIELD_0_4 )
	AsphyxiaUIFAQMainFrameContentText5:SetText( L.Faq_CONTENT_TEXT_FIELD_0_5 )
	AsphyxiaUIFAQMainFrameContentText6:SetText( L.Faq_CONTENT_TEXT_FIELD_0_6 )
end


------------------------------
-- MainFrame - Slash
------------------------------
local afaq = AsphyxiaUIFAQMainFrameSlashcommand or function() end
AsphyxiaUIFAQMainFrameSlashcommand = function( msg )
	if( InCombatLockdown() ) then print( ERR_NOT_IN_COMBAT ) return end

	if( AsphyxiaUIFAQMainFrame:IsVisible() ) then
		AsphyxiaUIFAQMainFrame:Hide()
	else
		AsphyxiaUIFAQMainFrame:Show()
		AsphyxiaUIFAQMainFrameContentBuildDefault()
	end

	--[[if( msg == "1" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp1content()
	elseif( msg == "2" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp2content()
	elseif( msg == "3" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp3content()
	elseif( msg == "4" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp4content()
	elseif( msg == "5" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp5content()
	elseif( msg == "6" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp6content()
	elseif( msg == "7" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp7content()
	elseif( msg == "8" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp8content()
	elseif( msg == "9" ) then
		if not AsphyxiaUIFAQMainFrame:IsVisible() then return end
		ahelp9content()
	else
		if( AsphyxiaUIFAQMainFrame:IsVisible() ) then
			AsphyxiaUIFAQMainFrame:Hide()
		else
			AsphyxiaUIFAQMainFrame:Show()
			AsphyxiaUIFAQMainFrameContentBuildDefault()
		end
	end]]
end

SlashCmdList.AsphyxiaUIFAQMainFrameSlashcommand = AsphyxiaUIFAQMainFrameSlashcommand
SLASH_AsphyxiaUIFAQMainFrameSlashcommand1 = "/afaq"










local AsphyxiaUIFAQOnLogon = CreateFrame( "Frame" )
AsphyxiaUIFAQOnLogon:RegisterEvent( "PLAYER_ENTERING_WORLD" )
AsphyxiaUIFAQOnLogon:SetScript( "OnEvent", function( self, event )
	self:UnregisterEvent( "PLAYER_ENTERING_WORLD" )

	print( "|cff00AAFFAsphyxiaUI - F.A.Q.|r loaded!" )
end )