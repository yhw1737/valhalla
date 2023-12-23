
easing = new EasingFunctions();
switch_ = 0;
val = 0;

level = 0;
var odd = irandom(100);
if odd < 100-O_System.level*5{
	level = 0;
}
else if odd < 100-O_System.level*3{
	level = 1;
}
else if odd < 100-O_System.level{
	level = 2;
}
else{
	level = 3;
}
level = clamp(level,0,O_System.level);
sprite_index = asset_get_index("S_Selection"+string(level));
image_index = irandom(sprite_get_number(sprite_index));
