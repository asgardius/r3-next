extends Label

func _process(delta: float) -> void:
	if (OS.get_name() == "Linux" || OS.get_name().ends_with("BSD")) && !OS.get_distribution_name().contains("Kali") && OS.get_data_dir().begins_with("/home") && OS.get_environment("WSL_DISTRO_NAME").length() < 1:
		if Global.firstrun:
			set_text("Welcome to your first session "+OS.get_data_dir().rsplit("/", true, 7)[2]);
		else:
			set_text("Welcome back "+OS.get_data_dir().rsplit("/", true, 7)[2]);
	else:
		_sk()

func _sk():
	Global.sk = true
	set_text("Script Kiddie detected, only true hackers can cheat here");
