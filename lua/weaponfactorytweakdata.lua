Hooks:PostHook(WeaponFactoryTweakData, "init", "old_ammo_damage_mul", function(self)
	self.parts.wpn_fps_upg_a_slug.custom_stats.damage_near_mul = 2
	self.parts.wpn_fps_upg_a_slug.custom_stats.damage_far_mul = 1.15

	self.parts.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 2
	self.parts.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 2.5

	self.parts.wpn_fps_upg_a_piercing.custom_stats.damage_near_mul = 2
	self.parts.wpn_fps_upg_a_piercing.custom_stats.damage_far_mul = 1.7

	self.parts.wpn_fps_upg_a_dragons_breath.custom_stats.damage_near_mul = 2
	self.parts.wpn_fps_upg_a_dragons_breath.custom_stats.damage_far_mul = 1.15

	self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 2
	self.wpn_fps_shot_huntsman.override.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 2.5

	self.wpn_fps_pis_judge.override.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 2
	self.wpn_fps_pis_judge.override.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 2.5

	self.wpn_fps_shot_b682.override.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 2
	self.wpn_fps_shot_b682.override.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 2.5

	self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 2
	self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 2.5

	self.wpn_fps_sho_coach.override.wpn_fps_upg_a_explosive.custom_stats.damage_near_mul = 2
	self.wpn_fps_sho_coach.override.wpn_fps_upg_a_explosive.custom_stats.damage_far_mul = 2.5

	self.wpn_fps_pis_judge.override.wpn_fps_upg_a_piercing.custom_stats.damage_near_mul = 2
	self.wpn_fps_pis_judge.override.wpn_fps_upg_a_piercing.custom_stats.damage_far_mul = 1.7

	self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_piercing.custom_stats.damage_near_mul = 2
	self.wpn_fps_pis_x_judge.override.wpn_fps_upg_a_piercing.custom_stats.damage_far_mul = 1.7
end)