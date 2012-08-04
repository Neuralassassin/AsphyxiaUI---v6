---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

if( C["databars"]["currency"] ~= true ) then return end

local CurrencyData = {}
local tokens = {
	{ 61, 250 },	-- Dalaran Jewelcrafter's Token
	{ 81, 250 },	-- Dalaran Cooking Award
	{ 241, 250 },	-- Champion Seal
	{ 361, 200 },	-- Illustrious Jewelcrafter's Token
	{ 390, 3000 },	-- Conquest Points
	{ 391, 2000 },	-- Tol Barad Commendation
	{ 392, 4000 },	-- Honor Points
	{ 395, 4000 },	-- Justice Points
	{ 396, 4000 },	-- Valor Points
	{ 402, 250 },	-- Chef's Award 
	{ 416, 300 },	-- Mark of the World Tree
}

local function updateCurrency()
	if( CurrencyData[1] ) then
		for i = 1, getn( CurrencyData ) do
			CurrencyData[i]:Kill()
		end
		wipe( CurrencyData ) 
	end

	for i, v in ipairs( tokens ) do
		local id, max = unpack( v )
		local name, amount, icon = GetCurrencyInfo( id )
		local r, g, b = oUFTukui.ColorGradient( amount, max, 0, 0.8, 0, 0.8, 0.8, 0, 0.8, 0, 0 )
		if( name and amount > 0 ) then
			local frame = CreateFrame( "Frame", "CurrencyData" .. id, UIParent )
			frame:Size( 120, 20 )
			frame:Point( "CENTER", UIParent, "CENTER", 0, 0 )
			frame:SetTemplate( "Transparent" )
			frame:EnableMouse( true )
			frame:CreateShadow( "Default" )
			frame:Animate( -140, 0, 0.4 )
			frame:Hide()

			frame.Status = CreateFrame( "StatusBar", "CurrencyDataStatus" .. id, frame )
			frame.Status:SetFrameLevel( 12 )
			frame.Status:SetStatusBarTexture( C["media"]["normTex"] )
			frame.Status:SetMinMaxValues( 0, max )
			frame.Status:SetValue( amount )
			frame.Status:SetStatusBarColor( r, g, b, 1 )
			frame.Status:Point( "TOPLEFT", frame, "TOPLEFT", 2, -2 )
			frame.Status:Point( "BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2 )

			frame.Text = frame.Status:CreateFontString( nil, "OVERLAY" )
			frame.Text:SetFont( S.CreateFontString() )
			frame.Text:Point( "CENTER", frame, "CENTER", 0, 0 )
			frame.Text:Width( frame:GetWidth() - 4 )
			frame.Text:SetShadowColor( 0, 0, 0 )
			frame.Text:SetShadowOffset( 1.25, -1.25 )
			frame.Text:SetText( format( "%s / %s", amount, max ) )

			frame.IconBG = CreateFrame( "Frame", "CurrencyDataIconBG" .. id, frame )
			frame.IconBG:Size( 20 )
			frame.IconBG:Point( "BOTTOMLEFT", frame, "BOTTOMRIGHT", S.Scale( 3 ), 0 )
			frame.IconBG:SetTemplate( "Default" )
			frame.IconBG:CreateShadow("Default")

			frame.Icon = frame.IconBG:CreateTexture( nil, "ARTWORK" )
			frame.Icon:Point( "TOPLEFT", frame.IconBG, "TOPLEFT", 4, -2 )
			frame.Icon:Point( "BOTTOMRIGHT", frame.IconBG, "BOTTOMRIGHT", -2, 2 )
			frame.Icon:SetTexCoord( 0.08, 0.92, 0.08, 0.92 )
			frame.Icon:SetTexture( "Interface\\Icons\\" .. icon )

			frame:SetScript( "OnEnter", function( self ) frame.Text:SetText( format( "%s", name ) ) end )
			frame:SetScript( "OnLeave", function( self ) frame.Text:SetText( format( "%s / %s", amount, max ) ) end )

			tinsert( CurrencyData, frame )
		end
	end

	for key, frame in ipairs( CurrencyData ) do
		frame:ClearAllPoints()
		if( key == 1 ) then
			frame:Point( "TOPLEFT", UIParent, "TOPLEFT", 2, -23 )
		else
			frame:Point( "TOP", CurrencyData[key - 1], "BOTTOM", 0, -3 )
		end
	end
end

local toggle = CreateFrame( "Frame", "CurrencyToggle", UIParent )
toggle:Size( 30, 15 )
toggle:Point( "TOPRIGHT", G.Panels.RightChatBackground, "TOPRIGHT", -5, -84 )
toggle:SetTemplate( "Default" )
toggle:EnableMouse( true )
toggle:SetFrameStrata( "MEDIUM" )
toggle:SetFrameLevel( 10 )
toggle:CreateOverlay( toggle )
toggle:CreateShadow( "Default" )
toggle:SetAlpha( 0 )
toggle:HookScript( "OnEnter", S.SetModifiedBackdrop )
toggle:HookScript( "OnLeave", S.SetOriginalBackdrop )
toggle:SetScript("OnEnter", function()
	if( InCombatLockdown() ) then return end
		toggle:FadeIn()
	end )

	toggle:SetScript( "OnLeave", function()
		toggle:FadeOut()
	end )

	toggle.Text = toggle:CreateFontString( nil, "OVERLAY" )
	toggle.Text:SetFont( S.CreateFontString() )
	toggle.Text:Point( "CENTER", toggle, "CENTER", 1.5, 1 )
	toggle.Text:SetText( S.RGBToHex( unpack( C["media"]["datatextcolor2"] ) ) .. "C" )
	toggle:SetScript( "OnMouseUp", function( self )
	for _, frame in pairs( CurrencyData ) do
		if( frame and frame:IsVisible() ) then
			frame:SlideOut()
		else
			frame:SlideIn()
		end
	end
end )

local updater = CreateFrame( "Frame" )
updater:RegisterEvent( "PLAYER_HONOR_GAIN" )
updater:SetScript( "OnEvent", updateCurrency )
hooksecurefunc( "BackpackTokenFrame_Update", updateCurrency )