class_name GodotzillaRisk extends Risk

func _init() -> void:
	morale_damage_per_second = 250
	emoji = "godotzilla"
	chance = 0.08
	alert_range = 1000
	
	visual_scene = preload("res://agents/risks/GodotzillaRiskVisual.tscn")
	
func trigger(poi: PointOfInterest, action_time: int) -> void:
	# Todo
	super(poi, action_time)
	
func resolve() -> void:
	super()
	
func _on_timeout() -> void:
	SettingsAndSound.play_sfx("fire")
	# ToDo sound
	super()
