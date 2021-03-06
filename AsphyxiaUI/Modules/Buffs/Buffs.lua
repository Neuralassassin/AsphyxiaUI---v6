---------------------------------------------------------------------------------------------
-- AddOn Name: AsphyxiaUI 6.0.0
-- License: MIT
-- Author: Sinaris @ Das Syndikat, Vaecia @ Blackmoore
-- Description: AsphyxiaUI, Editied Tukui Layout
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

local AsphyxiaUIDebuffMover = CreateFrame( "Frame", "AsphyxiaUIDebuffMover", UIParent )
AsphyxiaUIDebuffMover:Size( 422, 30 )
AsphyxiaUIDebuffMover:SetPoint( "TOPRIGHT", UIParent, -204, -137 )
AsphyxiaUIDebuffMover:SetTemplate( "Default" )
AsphyxiaUIDebuffMover:SetBackdropBorderColor( 1, 0, 0 )
AsphyxiaUIDebuffMover:SetClampedToScreen( true )
AsphyxiaUIDebuffMover:SetMovable( true )
AsphyxiaUIDebuffMover:SetFrameStrata( "LOW" )
AsphyxiaUIDebuffMover:Hide()
AsphyxiaUIDebuffMover:FontString( "Text", unpack( S.FontTemplate.MoverDefault.BuildFont ) )
AsphyxiaUIDebuffMover.Text:SetPoint( "CENTER", AsphyxiaUIDebuffMover, "CENTER", 0, 0 )
AsphyxiaUIDebuffMover.Text:SetText( L.move_debuffs )
tinsert( S.AllowFrameMoving, AsphyxiaUIDebuffMover )

TukuiAurasPlayerBuffs:ClearAllPoints()
TukuiAurasPlayerDebuffs:ClearAllPoints()

TukuiAurasPlayerBuffs:SetPoint( "TOPRIGHT", UIParent, -204, -2 )
TukuiAurasPlayerBuffs:SetAttribute( "wrapAfter", 17 )
TukuiAurasPlayerBuffs:SetAttribute( "xOffset", -33 )
TukuiAurasPlayerBuffs:SetAttribute( "wrapYOffset", -67.5 )

TukuiAurasPlayerDebuffs:SetPoint( "RIGHT", AsphyxiaUIDebuffMover )
TukuiAurasPlayerDebuffs:SetAttribute( "wrapAfter", 17 )
TukuiAurasPlayerDebuffs:SetAttribute( "xOffset", -33 )

local HookFrames = {
	TukuiAurasPlayerBuffs,
	TukuiAurasPlayerDebuffs,
	TukuiAurasPlayerConsolidate,
}

local OnAttributeChanged = function( self )
	for i = 1, self:GetNumChildren() do
		local child = select( i, self:GetChildren() )

		if( child ) then
			child:CreateShadow( "Default" )
		end

		if( child.Duration ) then
			child.Duration:SetFont( unpack( S.FontTemplate.BuffsDuration.BuildFont ) )
			child.Duration:ClearAllPoints()
			child.Duration:SetPoint( "BOTTOM", 0, -1 )
		end

		if( child.Count ) then
			child.Count:SetFont( unpack( S.FontTemplate.BuffsCount.BuildFont ) )
			child.Count:ClearAllPoints()
			child.Count:SetPoint( "TOP", 0, -4 )
		end

		if( child.Holder ) then
			child.Holder:ClearAllPoints()
			child.Holder:SetPoint( "TOP", child, "BOTTOM", 0, -3 )
			child.Holder:CreateShadow( "Default" )
		end
	end
end

for _, frame in pairs( HookFrames ) do
	frame:RegisterEvent( "PLAYER_ENTERING_WORLD" )
	frame:HookScript( "OnAttributeChanged", OnAttributeChanged )
	frame:HookScript( "OnEvent", OnAttributeChanged )
end