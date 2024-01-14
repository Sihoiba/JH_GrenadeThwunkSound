register_blueprint "grenade_launcher"
{
	blueprint = "base_launcher",
	text = {
		name = "grenade launcher",
		desc = "40mm grenade launcher. Best solution to a crowd is covering it with 'nades.",
	},
	ascii     = {
		glyph     = "/",
		color     = WHITE,
	},
	lists = {
		group    = "item",
		keywords = { "base_weapon", },
		weight   = 20,
		dmin     = 10,
		dmed     = 12,
	},
	attributes = {
		swap_time    = 0.5,
		damage       = 36,
		crit_damage  = 50,
		shots        = 1,
		clip_size    = 3,
		explosion    = 1,
		mod_capacity = 4,
		opt_distance = 2,
		max_distance = 6,
		gib_factor   = 2,
	},
	clip = {
		ammo  = "ammo_40",
		count = 3,
		reload_sound = "reload",
	},
	ui_target = {
		type = "mortar",
	},
	noise = {
		use = 4,
		hit = 15,
	},
	weapon = {
		group       = "explosives",
		type        = "mortar",
		damage_type = "slash",
		fire_sound  = "grenade_launcher_shot",
	},
}

register_blueprint "exo_egls"
{
	blueprint = "base_launcher",
	lists = {
		group    = "item",
		keywords = { "weapon", "special", "exotic" },
		weight   = 10,
		dmin     = 2,
		dmed     = 5,
		dmax     = 10,
	},
	text = {
		name = "EGLS launcher",
		desc = "Expendable Grenade Launcher System. Useless once all ammo is used up.",
	},
	ascii     = {
		glyph     = "/",
		color     = MAGENTA,
	},
	attributes = {
		swap_time    = 0.5,
		damage       = 60,
		crit_damage  = 50,
		shot_delay   = 100,
		shots        = 1,
		clip_size    = 20,
		explosion    = 2,
		mod_capacity = 1,
		opt_distance = 2,
		max_distance = 7,
		gib_factor   = 2,
	},
	clip = {
		ammo  = "",
		count = 20,
		reload_sound = "reload",
		reload_count = -1,
	},
	ui_target = {
		type = "mortar",
	},
	noise = {
		use = 4,
		hit = 15,
	},
	weapon = {
		group       = "explosives",
		type        = "mortar",
		damage_type = "slash",
		fire_sound  = "grenade_launcher_shot",
	},
	data = {
		perk = {
			type          = "perk_w",
			subtype       = "explosives",
			damage_low    = 10,
			damage_high   = 20,
			damage_status = 10,
			mod           = { perk_wb_focused = 0, perk_wa_tracking = 0, perk_wa_sustain = 0, weak = 0, },
			exotic        = "perk_we_expendable",
		},
	},
	callbacks = {
		on_create = [=[
		function(self,_,tier)
			generator.roll_perks( self, tier )
		end
		]=],
	},
}

register_blueprint "exo_grenade_launcher"
{
	blueprint = "base_launcher",
	lists = {
		group    = "item",
		keywords = { "weapon", "special", "exotic" },
		weight   = 10,
		dmed     = 8,
		dmax     = 10,
	},
	text = {
		name = "40mm drum launcher",
		desc = "Rapid-fire 40mm grenade launcher. When you love to look at all those pretty explosions.",
	},
	ascii     = {
		glyph     = "/",
		color     = MAGENTA,
	},
	attributes = {
		swap_time    = 0.5,
		damage       = 25,
		crit_damage  = 50,
		shot_delay   = 100,
		shots        = 1,
		clip_size    = 3,
		explosion    = 1,
		mod_capacity = 1,
		opt_distance = 2,
		max_distance = 6,
		gib_factor   = 2,
	},
	clip = {
		ammo  = "ammo_40",
		count = 6,
		reload_sound = "reload",
	},
	ui_target = {
		type = "mortar",
	},
	noise = {
		use = 4,
		hit = 15,
	},
	weapon = {
		group       = "explosives",
		type        = "mortar",
		damage_type = "slash",
		fire_sound  = "grenade_launcher_shot",
	},
	data = {
		perk = {
			type          = "perk_w",
			subtype       = "explosives",
			damage_low    = 5,
			damage_high   = 10,
			damage_status = 5,
			mod           = { perk_wb_focused = 0, perk_wa_tracking = 0, perk_wa_sustain = 0, weak = 0, },
			exotic        = "perk_we_grenade_drum",
		},
	},
	callbacks = {
		on_create = [=[
		function(self,_,tier)
			generator.roll_perks( self, tier )
		end
		]=],
	},
}