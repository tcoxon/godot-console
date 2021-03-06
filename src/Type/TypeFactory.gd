
extends Reference


const TypeList = [
	preload('Any.gd'),
	preload('Bool.gd'),
	preload('Int.gd'),
	preload('Float.gd'),
	preload('String.gd'),
	preload('Vector2.gd'),
	null,  # Rect2
	preload('Vector3.gd'),
]


# @param  int  type
static func create(type):  # BaseType
	return TypeList[type if type >= 0 and type < TypeList.size() and TypeList[type] != null else 0].new()
