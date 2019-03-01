extends Node

func find_base_entity(node : Node) -> Entity:
	"""
	  Finds the nearest ancestor for the given node having an Entity subnode and returns it (it must be
	  named 'Entity' and also extend the Entity class). Returns null if no such node is found.
	"""
	if not node:
		return null
		
	if node == get_tree().root:
		return null
		
	if node.has_node('Entity') and node.get_node('Entity') is Entity:
		var result : Entity = node.get_node('Entity')
		return result
		
	return find_base_entity(node.get_parent())
	