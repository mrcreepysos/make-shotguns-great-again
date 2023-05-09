local init_original = RaycastWeaponBase.init
function RaycastWeaponBase:init(...)
	init_original(self, ...)

	-- Shock and Awe shotgun interaction restoration
	if table.contains(tweak_data.weapon[self._name_id].categories, "shotgun") then
		self.SHIELD_KNOCK_BACK_CHANCE = tweak_data.upgrades.values.player.shield_knock_bullet.chance / tweak_data.weapon[self._name_id].rays
	end

end