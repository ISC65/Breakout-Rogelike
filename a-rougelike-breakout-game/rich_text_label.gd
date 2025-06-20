extends RichTextLabel

var trans: Translation = load("res://lang_keys/translation keys.csv")

func _ready() -> void:
	if trans:
		var trtext = trans.get_message("test.greet_key", &"ja")
		self.text = trtext
	else:
		print("trans not found")
	
