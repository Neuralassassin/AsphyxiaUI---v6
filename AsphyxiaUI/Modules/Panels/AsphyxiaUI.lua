---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

------------------------------
-- Not Needed
------------------------------
local KillPanels = {
	G.ActionBars.Bar1,
	G.ActionBars.Bar2,
	G.ActionBars.Bar3,
	G.ActionBars.Bar4,
	G.ActionBars.Bar5,
	G.ActionBars.Bar6,
	G.ActionBars.Bar7,

	G.ActionBars.Pet,
	G.ActionBars.Pet.BackgroundLink,
	
	G.Panels.BottomPanelOverActionBars,
	G.Panels.BottomLeftVerticalLine,
	G.Panels.BottomRightVerticalLine,
	G.Panels.BottomLeftCube,
	G.Panels.BottomRightCube,
	G.Panels.BottomLeftLine,
	G.Panels.BottomRightLine,
	G.Panels.DataTextLeft,
	G.Panels.DataTextRight,
	G.Panels.LeftChatBackground,
	G.Panels.RightChatBackground,
	G.Panels.LeftChatTabsBackground,
	G.Panels.RightChatTabsBackground,
	G.Panels.LeftDataTextToActionBarLine,
	G.Panels.RightDataTextToActionBarLine,
	G.Panels.BattlegroundDataText
}

for _, Panels in pairs( KillPanels ) do
	Panels:Kill()
end

------------------------------
-- Chat
------------------------------
local AsphyxiaUILeftChatBackground = CreateFrame( "Frame", "AsphyxiaUILeftChatBackground", UIParent )
AsphyxiaUILeftChatBackground:Size( C["chat"]["width"], C["chat"]["height"] )
AsphyxiaUILeftChatBackground:Point( "BOTTOMLEFT", UIParent, "BOTTOMLEFT", 2, 2 )
AsphyxiaUILeftChatBackground:SetTemplate( "Transparent" )
AsphyxiaUILeftChatBackground:CreateShadow( "Default" )
AsphyxiaUILeftChatBackground:SetFrameLevel( 1 )

local AsphyxiaUIRightChatBackground = CreateFrame( "Frame", "AsphyxiaUIRightChatBackground", UIParent )
AsphyxiaUIRightChatBackground:Size( C["chat"]["width"], C["chat"]["height"] )
AsphyxiaUIRightChatBackground:Point( "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -2, 2 )
AsphyxiaUIRightChatBackground:SetTemplate( "Transparent" )
AsphyxiaUIRightChatBackground:CreateShadow( "Default" )
AsphyxiaUIRightChatBackground:SetFrameLevel( 1 )

local AsphyxiaUILeftChatTab = CreateFrame( "Frame", "AsphyxiaUILeftChatTab", UIParent )
AsphyxiaUILeftChatTab:Size( AsphyxiaUILeftChatBackground:GetWidth() - 10, 23 )
AsphyxiaUILeftChatTab:Point( "TOP", AsphyxiaUILeftChatBackground, "TOP", 0, -5 )
AsphyxiaUILeftChatTab:SetTemplate( "Transparent" )
AsphyxiaUILeftChatTab:CreateOverlay( AsphyxiaUILeftChatTab )

local AsphyxiaUIRightChatTab = CreateFrame( "Frame", "AsphyxiaUIRightChatTab", UIParent )
AsphyxiaUIRightChatTab:Size( AsphyxiaUIRightChatBackground:GetWidth() - 10, 23 )
AsphyxiaUIRightChatTab:Point( "TOP", AsphyxiaUIRightChatBackground, "TOP", 0, -5 )
AsphyxiaUIRightChatTab:SetTemplate( "Transparent" )
AsphyxiaUIRightChatTab:CreateOverlay( AsphyxiaUIRightChatTab )

if( C["chat"]["background"] ~= true ) then
	G.Panels.LeftChatBackground:SetAlpha( 0 )
	G.Panels.RightChatBackground:SetAlpha( 0 )
	G.Panels.LeftChatTabsBackground:SetAlpha( 0 )
	G.Panels.RightChatTabsBackground:SetAlpha( 0 )
end

------------------------------
-- Actionbars
------------------------------
local AsphyxiaUIActionbar1 = CreateFrame( "Frame", "AsphyxiaUIActionbar1", UIParent, "SecureHandlerStateTemplate" )
AsphyxiaUIActionbar1:Size( ( S.buttonsize * 12 ) + ( S.buttonspacing * 13 ) + 2, ( S.buttonsize * 2 ) + ( S.buttonspacing * 3 ) + 2 )
AsphyxiaUIActionbar1:Point( "BOTTOM", UIParent, "BOTTOM", 0, 48 )
AsphyxiaUIActionbar1:SetTemplate( "Transparent" )
AsphyxiaUIActionbar1:CreateShadow( "Default" )
AsphyxiaUIActionbar1:SetFrameStrata("BACKGROUND")
AsphyxiaUIActionbar1:SetFrameLevel( 1 )

local AsphyxiaUIActionbar2 = CreateFrame( "Frame", "AsphyxiaUIActionbar2", UIParent )
AsphyxiaUIActionbar2:SetAllPoints( AsphyxiaUIActionbar1 )

local AsphyxiaUIActionbar3 = CreateFrame( "Frame", "AsphyxiaUIActionbar3", UIParent )
AsphyxiaUIActionbar3:SetAllPoints( AsphyxiaUIActionbar1 )

local AsphyxiaUIActionbar4 = CreateFrame( "Frame", "AsphyxiaUIActionbar4", UIParent )
AsphyxiaUIActionbar4:SetAllPoints( AsphyxiaUIActionbar1 )

local AsphyxiaUISplitBarLeft = CreateFrame( "Frame", "AsphyxiaUISplitBarLeft", UIParent )
AsphyxiaUISplitBarLeft:Size( ( S.buttonsize * 3 ) + ( S.buttonspacing * 4 ) + 2, AsphyxiaUIActionbar1:GetHeight() )
AsphyxiaUISplitBarLeft:Point( "BOTTOMRIGHT", AsphyxiaUIActionbar1, "BOTTOMLEFT", -3, 0 )
AsphyxiaUISplitBarLeft:SetTemplate( "Transparent" )
AsphyxiaUISplitBarLeft:CreateShadow( "Default" )

local AsphyxiaUISplitBarRight = CreateFrame( "Frame", "AsphyxiaUISplitBarRight", UIParent )
AsphyxiaUISplitBarRight:Size( ( S.buttonsize * 3 ) + ( S.buttonspacing * 4 ) + 2, AsphyxiaUIActionbar1:GetHeight() )
AsphyxiaUISplitBarRight:Point( "BOTTOMLEFT", AsphyxiaUIActionbar1, "BOTTOMRIGHT", 3, 0 )
AsphyxiaUISplitBarRight:SetTemplate( "Transparent" )
AsphyxiaUISplitBarRight:CreateShadow( "Default" )

local AsphyxiaUIRightBar = CreateFrame( "Frame", "AsphyxiaUIRightBar", UIParent )
AsphyxiaUIRightBar:Size( ( S.buttonsize * 12 + S.buttonspacing * 13 ) + 2,  ( S.buttonsize * 12 + S.buttonspacing * 13 ) + 2 )
AsphyxiaUIRightBar:SetTemplate( "Transparent" )
AsphyxiaUIRightBar:Point("BOTTOMRIGHT", AsphyxiaUIRightChatBackground, "TOPRIGHT", 0, 3  )
AsphyxiaUIRightBar:CreateShadow( "Default" )
if( C["chat"]["background"] ~= true ) then
	AsphyxiaUIRightBar:ClearAllPoints()
	AsphyxiaUIRightBar:Point( "RIGHT", UIParent, "RIGHT", -8, 0 )
end
AsphyxiaUIRightBar:SetFrameStrata("BACKGROUND")
AsphyxiaUIRightBar:SetFrameLevel( 1 )

local AsphyxiaUIPetBar = CreateFrame( "Frame", "AsphyxiaUIPetBar", UIParent )
if( C["actionbar"]["vertical_rightbars"] == true ) then
	AsphyxiaUIPetBar:Width( ( S.petbuttonsize + S.buttonspacing * 2 ) + 2 )
	AsphyxiaUIPetBar:Height( ( S.petbuttonsize * NUM_PET_ACTION_SLOTS + S.buttonspacing * 11 ) + 2 )
else
	AsphyxiaUIPetBar:Width( ( S.petbuttonsize * NUM_PET_ACTION_SLOTS + S.buttonspacing * 11 ) + 2 )
	AsphyxiaUIPetBar:Height( ( S.petbuttonsize + S.buttonspacing * 2 ) + 2 )
end
AsphyxiaUIPetBar:Point( "BOTTOM", AsphyxiaUIRightBar, "TOP", 0, 3 )
AsphyxiaUIPetBar:SetTemplate( "Transparent" )
AsphyxiaUIPetBar:CreateShadow( "Default" )

------------------------------
-- Datatext Panels
------------------------------
local AsphyxiaUILeftDataTextPanel = CreateFrame( "Frame", "AsphyxiaUILeftDataTextPanel", UIParent )
AsphyxiaUILeftDataTextPanel:Size( AsphyxiaUILeftChatBackground:GetWidth() - 10, 23 )
AsphyxiaUILeftDataTextPanel:Point( "BOTTOM", AsphyxiaUILeftChatBackground, "BOTTOM", 0, 5 )
AsphyxiaUILeftDataTextPanel:SetTemplate( "Transparent" )
AsphyxiaUILeftDataTextPanel:CreateOverlay( AsphyxiaUILeftDataTextPanel )

local AsphyxiaUIRightDataTextPanel = CreateFrame( "Frame", "AsphyxiaUIRightDataTextPanel", UIParent )
AsphyxiaUIRightDataTextPanel:Size( AsphyxiaUIRightChatBackground:GetWidth() - 10, 23 )
AsphyxiaUIRightDataTextPanel:Point( "BOTTOM", AsphyxiaUIRightChatBackground, "BOTTOM", 0, 5 )
AsphyxiaUIRightDataTextPanel:SetTemplate( "Transparent" )
AsphyxiaUIRightDataTextPanel:CreateOverlay( AsphyxiaUIRightDataTextPanel )

local AsphyxiaUIInfoCenter = CreateFrame( "Frame", "AsphyxiaUIInfoCenter", AsphyxiaUIActionbar1 )
AsphyxiaUIInfoCenter:Size( AsphyxiaUIActionbar1:GetWidth(), 20 )
AsphyxiaUIInfoCenter:Point( "TOP", AsphyxiaUIActionbar1, "BOTTOM", 0, -3 )
AsphyxiaUIInfoCenter:SetTemplate( "Default" )
AsphyxiaUIInfoCenter:CreateShadow( "Default" )
AsphyxiaUIInfoCenter:SetFrameLevel( 2 )
AsphyxiaUIInfoCenter:SetFrameStrata( "BACKGROUND" )
AsphyxiaUIInfoCenter:CreateOverlay( AsphyxiaUIInfoCenter )

local AsphyxiaUIInfoCenterLeft = CreateFrame( "Frame", "AsphyxiaUIInfoCenterLeft", AsphyxiaUISplitBarLeft )
AsphyxiaUIInfoCenterLeft:Size( AsphyxiaUISplitBarLeft:GetWidth(), 20 )
AsphyxiaUIInfoCenterLeft:Point( "TOP", AsphyxiaUISplitBarLeft, "BOTTOM", 0, -3 )
AsphyxiaUIInfoCenterLeft:SetTemplate( "Default" )
AsphyxiaUIInfoCenterLeft:CreateShadow( "Default" )
AsphyxiaUIInfoCenterLeft:SetFrameLevel( 2 )
AsphyxiaUIInfoCenterLeft:SetFrameStrata( "BACKGROUND" )
AsphyxiaUIInfoCenterLeft:CreateOverlay( AsphyxiaUIInfoCenterLeft )

local AsphyxiaUIInfoCenterRight = CreateFrame( "Frame", "AsphyxiaUIInfoCenterRight", AsphyxiaUISplitBarRight )
AsphyxiaUIInfoCenterRight:Size( AsphyxiaUISplitBarRight:GetWidth(), 20 )
AsphyxiaUIInfoCenterRight:Point( "TOP", AsphyxiaUISplitBarRight, "BOTTOM", 0, -3 )
AsphyxiaUIInfoCenterRight:SetTemplate( "Default" )
AsphyxiaUIInfoCenterRight:CreateShadow( "Default" )
AsphyxiaUIInfoCenterRight:SetFrameLevel( 2 )
AsphyxiaUIInfoCenterRight:SetFrameStrata( "BACKGROUND" )
AsphyxiaUIInfoCenterRight:CreateOverlay( AsphyxiaUIInfoCenterRight )

------------------------------
-- Minimap
------------------------------
if( TukuiMinimap ) then
	G.Panels.DataTextMinimapLeft:Kill()
	G.Panels.DataTextMinimapRight:Kill()

	local AsphyxiaUITimeWatch = CreateFrame( "Frame", "AsphyxiaUITimeWatch", Minimap )
	AsphyxiaUITimeWatch:Size( 55, 17 )
	AsphyxiaUITimeWatch:Point( "TOP", Minimap, "BOTTOM", 0, 8 )
	AsphyxiaUITimeWatch:SetTemplate( "Default" )
	AsphyxiaUITimeWatch:CreateShadow( "Default" )
	AsphyxiaUITimeWatch:SetFrameLevel( 3 )
	AsphyxiaUITimeWatch:SetFrameStrata( "MEDIUM" )
	AsphyxiaUITimeWatch:CreateOverlay( AsphyxiaUITimeWatch )
end