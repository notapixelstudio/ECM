tool
extends EditorPlugin

func _enter_tree():
	# Initialization of the plugin goes here
	add_custom_type("Entity", "Node", preload("Entity.gd"), preload("icons/Entity.png"))
	add_custom_type("Component", "Node", preload("Component.gd"), preload("icons/Component.png"))
	add_custom_type("Manager", "Node", preload("Manager.gd"), preload("icons/Manager.png"))
	
	add_autoload_singleton("ECM", "res://addons/ECM/ECM.gd")

func _exit_tree():
	# Clean-up of the plugin goes here
	remove_custom_type("Entity")
	remove_custom_type("Component")
	remove_custom_type("Manager")
	
	remove_autoload_singleton("ECM")
	