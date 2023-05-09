Hooks:PostHook(NewRaycastWeaponBase, "_update_stats_values", "no_drf_init", function(self)
	self._optimal_distance = 0
	self._optimal_range = 0
end)