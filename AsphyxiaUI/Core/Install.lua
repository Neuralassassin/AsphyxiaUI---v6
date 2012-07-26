---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

G.Install.Frame:SetTemplate( "Transparent" )

local AsphyxiaUIInstallFrameIconLeft = CreateFrame( "Frame", "AsphyxiaUIInstallFrameIconLeft", G.Install.Frame )
AsphyxiaUIInstallFrameIconLeft:Size( 58, 58 )
AsphyxiaUIInstallFrameIconLeft:Point( "BOTTOMLEFT", G.Install.Frame, "TOPLEFT", 0, 3 )
AsphyxiaUIInstallFrameIconLeft:SetFrameStrata( "HIGH" )
AsphyxiaUIInstallFrameIconLeft:CreateShadow( "Default" )
AsphyxiaUIInstallFrameIconLeft:SetTemplate( "Transparent" )

AsphyxiaUIInstallFrameIconLeft.Texture = AsphyxiaUIInstallFrameIconLeft:CreateTexture( nil, "ARTWORK" )
AsphyxiaUIInstallFrameIconLeft.Texture:Point( "TOPLEFT", 2, -2 )
AsphyxiaUIInstallFrameIconLeft.Texture:Point( "BOTTOMRIGHT", -2, 2 )
AsphyxiaUIInstallFrameIconLeft.Texture:SetTexture( C["media"]["logo"] )

local AsphyxiaUIInstallFrameIconRight = CreateFrame( "Frame", "AsphyxiaUIInstallFrameIconRight", G.Install.Frame )
AsphyxiaUIInstallFrameIconRight:Size( 58, 58 )
AsphyxiaUIInstallFrameIconRight:Point( "BOTTOMRIGHT", G.Install.Frame, "TOPRIGHT", 0, 3 )
AsphyxiaUIInstallFrameIconRight:SetFrameStrata( "HIGH" )
AsphyxiaUIInstallFrameIconRight:CreateShadow( "Default" )
AsphyxiaUIInstallFrameIconRight:SetTemplate( "Transparent" )

AsphyxiaUIInstallFrameIconRight.Texture = AsphyxiaUIInstallFrameIconRight:CreateTexture( nil, "ARTWORK" )
AsphyxiaUIInstallFrameIconRight.Texture:Point( "TOPLEFT", 2, -2 )
AsphyxiaUIInstallFrameIconRight.Texture:Point( "BOTTOMRIGHT", -2, 2 )
AsphyxiaUIInstallFrameIconRight.Texture:SetTexture( C["media"]["logo"] )

local AsphyxiaUIInstallFrameTitle = CreateFrame( "Frame", "AsphyxiaUIInstallFrameTitle", G.Install.Frame )
AsphyxiaUIInstallFrameTitle:Size( G.Install.Frame:GetWidth() - 122, 30 )
AsphyxiaUIInstallFrameTitle:Point( "BOTTOM", G.Install.Frame, "TOP", 0, 3 )
AsphyxiaUIInstallFrameTitle:SetFrameStrata( "HIGH" )
AsphyxiaUIInstallFrameTitle:CreateShadow( "Default" )
AsphyxiaUIInstallFrameTitle:SetTemplate( "Transparent" )

local AsphyxiaUIInstallFrameTitleText = AsphyxiaUIInstallFrameTitle:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIInstallFrameTitleText:SetFont( S.CreateFontString() )
AsphyxiaUIInstallFrameTitleText:SetPoint( "CENTER", AsphyxiaUIInstallFrameTitle, 0, 0 )
AsphyxiaUIInstallFrameTitleText:SetText( L.AsphyxiaUI_General_Title )

local AsphyxiaUIInstallFrameBottom = CreateFrame( "Frame", "AsphyxiaUIInstallFrameBottom", G.Install.Frame )
AsphyxiaUIInstallFrameBottom:Size( G.Install.Frame:GetWidth(), 30 )
AsphyxiaUIInstallFrameBottom:Point( "TOP", G.Install.Frame, "BOTTOM", 0, -3 )
AsphyxiaUIInstallFrameBottom:SetFrameStrata( "HIGH" )
AsphyxiaUIInstallFrameBottom:CreateShadow( "Default" )
AsphyxiaUIInstallFrameBottom:SetTemplate( "Transparent" )

local AsphyxiaUIInstallFrameBottomText = AsphyxiaUIInstallFrameBottom:CreateFontString( nil, "OVERLAY" )
AsphyxiaUIInstallFrameBottomText:SetFont( S.CreateFontString() )
AsphyxiaUIInstallFrameBottomText:SetPoint( "CENTER", AsphyxiaUIInstallFrameBottom, 0, 0 )
AsphyxiaUIInstallFrameBottomText:SetText( L.AsphyxiaUI_General_Copyright )

local AsphyxiaUIOnLogon = CreateFrame( "Frame" )
AsphyxiaUIOnLogon:RegisterEvent( "PLAYER_ENTERING_WORLD" )
AsphyxiaUIOnLogon:SetScript( "OnEvent", function( self, event )
	self:UnregisterEvent( "PLAYER_ENTERING_WORLD" )

	if( AsphyxiaUISaved == nil ) then
		AsphyxiaUISaved = {}
		AsphyxiaUISaved = {
			["bottomrows"] = 1,
			["rightbars"] = 1,
			["splitbars"] = false,
			["actionbarsLocked"] = false,
		}
	end

	if( IsAddOnLoaded( "AsphyxiaUI_Raid" ) and IsAddOnLoaded( "AsphyxiaUI_Raid_Healing" ) ) then
		S.ShowPopup( "ASPHYXIAUI_SELECT_RAID_LAYOUT" )
	end

	if( C["chat"]["background"] ~= true ) then
		S.ShowPopup( "ASPHYXIAUI_ENABLE_CHAT_BACKGROUND" )
	end

	if( C["global"]["welcomemessage"] == true ) then
		print( L.AsphyxiaUI_General_Welcomemessage1 )
		print( L.AsphyxiaUI_General_Welcomemessage2 )
	end
end )