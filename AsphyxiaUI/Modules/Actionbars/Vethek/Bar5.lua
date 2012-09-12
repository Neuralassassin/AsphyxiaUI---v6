---------------------------------------------------------------------------------------------
-- AddOn Name: AsphyxiaUI 6.0.0
-- License: MIT
-- Author: Sinaris @ Das Syndikat, Vaecia @ Blackmoore
-- Description: AsphyxiaUI, Editied Tukui Layout
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

if( C["global"]["globalstyle"] ~= "vethek" ) then return end

if( C["actionbar"]["enable"] ~= true ) then return end

local bar = TukuiBar5
local ButtonSpacing = 2

TukuiBar5:SetAlpha( 1 )
MultiBarLeft:SetParent( bar )

for i = 1, 12 do
	local b = _G["MultiBarLeftButton" .. i]
	local b2 = _G["MultiBarLeftButton" .. i - 1]
	b:SetSize( S.buttonsize, S.buttonsize )
	b:ClearAllPoints()
	b:SetFrameStrata( "BACKGROUND" )
	b:SetFrameLevel( 15 )

	if( i == 1 ) then
		b:SetPoint( "TOPRIGHT", bar, -ButtonSpacing, -ButtonSpacing )
	else
		b:SetPoint( "TOP", b2, "BOTTOM", 0, -ButtonSpacing )
	end
end

RegisterStateDriver( bar, "visibility", "[vehicleui][petbattle][overridebar] hide; show" )