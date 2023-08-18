-- update 237 try not to ruin things challenge
Hooks:PostHook(ShotgunBase, "setup_default", "msga_setup_default", function(self)
	self._damage_near = tweak_data.weapon[self._name_id].damage_near
	self._damage_far = tweak_data.weapon[self._name_id].damage_far
end)

function ShotgunBase:get_damage_falloff(damage, col_ray, user_unit)
	local distance = col_ray.distance or mvector3.distance(col_ray.unit:position(), user_unit:position())
	local inc_range_mul = 1
	local current_state = user_unit:movement()._current_state
	if current_state and current_state:in_steelsight() then
		inc_range_mul = managers.player:upgrade_value("shotgun", "steelsight_range_inc", 1)
	end
	return (1 - math.min(1, math.max(0, distance - self._damage_near * inc_range_mul) / (self._damage_far * inc_range_mul))) * damage
end

function ShotgunBase:_update_stats_values()
	ShotgunBase.super._update_stats_values(self)
	self:setup_default()

	if self._ammo_data then
		if self._ammo_data.rays ~= nil then
			self._rays = self._ammo_data.rays
		end

		if self._ammo_data.damage_near ~= nil then
			self._damage_near = self._ammo_data.damage_near
		end

		if self._ammo_data.damage_near_mul ~= nil then
			self._damage_near = self._damage_near * self._ammo_data.damage_near_mul
		end

		if self._ammo_data.damage_far ~= nil then
			self._damage_far = self._ammo_data.damage_far
		end

		if self._ammo_data.damage_far_mul ~= nil then
			self._damage_far = self._damage_far * self._ammo_data.damage_far_mul
		end

		self._range = self._damage_far
	end
end