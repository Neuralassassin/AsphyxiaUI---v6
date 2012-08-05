---------------------------------------------------------------------------------------------
-- Project: AsphyxiaUI Version 6.0
---------------------------------------------------------------------------------------------

local S, C, L, G = unpack( Tukui )

S.CreateFontString = function( normalfont )
	if( normalfont ) then
		return C["media"]["font"], 12, "THINOUTLINE"
	else
		if( S.client == "ruRU" ) then
			return C["media"]["pixel_ru"], 10, "MONOCHROMEOUTLINE"
		else
			return C["media"]["asphyxia"], 10, "MONOCHROMEOUTLINE"
		end
	end
end

function S.SetModifiedBackdrop( self )
	local color = RAID_CLASS_COLORS[S.myclass]
	self:SetBackdropColor( color.r * 0.15, color.g * 0.15, color.b * 0.15 )
	self:SetBackdropBorderColor( color.r, color.g, color.b )
end

function S.SetOriginalBackdrop( self )
	local color = RAID_CLASS_COLORS[S.myclass]
	if( C["general"]["classcolortheme"] == true ) then
		self:SetBackdropBorderColor( color.r, color.g, color.b )
	else
		self:SetTemplate( "Default" )
	end
end

S.DataBarPoint = function( p, obj )
	obj:SetPoint( "TOPRIGHT", S.databars[p], "TOPRIGHT", -2, -2 )
	obj:SetPoint( "BOTTOMLEFT", S.databars[p], "BOTTOMLEFT", 2, 2 )
end

S.DataBarTooltipAnchor = function( barNum )
	local xoff = -S.databars[barNum]:GetWidth()
	local yoff = S.Scale(-5)
	
	if( C["databars"]["settings"]["vertical"] == true ) then
		xoff = S.Scale( 5 )
		yoff = S.databars[barNum]:GetHeight()
	end

	return xoff, yoff
end

function S.update_alpha( self )
	if( self.parent:GetAlpha() == 0 ) then
		self.parent:Hide()
		self:Hide()
	end
end

function S.fadeOut( self )
	UIFrameFadeOut( self, .4, 1, 0 )
	self.frame:Show()
end

function S.fadeIn( p )
	p.frame = CreateFrame( "Frame", nil, p )
	p.frame:Hide()
	p.frame.parent = p
	p.frame:SetScript( "OnUpdate", S.update_alpha )
	p:SetScript( "OnShow", function()
		p.frame:Hide()
		UIFrameFadeIn( p, .4, 0, 1 )
	end )
	p.fadeOut = S.fadeOut
end