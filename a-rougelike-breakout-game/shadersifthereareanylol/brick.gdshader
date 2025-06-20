shader_type canvas_item;

uniform sampler2D palette;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	vec4 result_color = texture(palette, color.ra);
	result_color.a = color.a;
	result_color.r = color.r;
	COLOR = result_color;
}


//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
