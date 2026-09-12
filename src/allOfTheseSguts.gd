extends Control

# Hello moto

func _on_launchbutton_shitted() -> void:
	var exe_dir: String = OS.get_executable_path().get_base_dir()
	var executable_path: String = ""
	
	if OS.get_name() == "Windows":
		executable_path = exe_dir.path_join("bin/Worst Bowling Game.exe")
	elif OS.get_name() == "Linux" or OS.get_name() == "FreeBSD":
		executable_path = exe_dir.path_join("bin/Worst Bowling Game.x86_64")

	if FileAccess.file_exists(executable_path):
		OS.create_process(executable_path, [])
		get_tree().quit()
	else:
		push_error("Game executable not existing in this univers: " + executable_path)
