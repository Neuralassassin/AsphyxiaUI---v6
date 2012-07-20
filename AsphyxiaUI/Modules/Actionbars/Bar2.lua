---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

if( C["actionbar"]["enable"] ~= true ) then return end

local bar = AsphyxiaUIActionbar2
MultiBarBottomLeft:SetParent( bar )

for i = 1, 12 do
	local b = _G["MultiBarBottomLeftButton" .. i]
	local b2 = _G["MultiBarBottomLeftButton" .. i - 1]
	b:SetSize( S.buttonsize, S.buttonsize )
	b:ClearAllPoints()
	b:SetFrameStrata( "BACKGROUND" )
	b:SetFrameLevel( 15 )

	if( C["actionbar"]["mainswap"] == true ) then
		if( i == 1 ) then
			b:Point( "TOP", ActionButton1, "BOTTOM", 0, -S.buttonspacing )
		else
			b:Point( "LEFT", b2, "RIGHT", S.buttonspacing, 0 )
		end
	else
		if( i == 1 ) then
			b:Point( "BOTTOM", ActionButton1, "TOP", 0, S.buttonspacing )
		else
			b:Point( "LEFT", b2, "RIGHT", S.buttonspacing, 0 )
		end
	end
end