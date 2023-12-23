
if sprite_index == S_Selection0{
	switch(image_index){
		case 0:
		repeat(5){
			instance_create_layer(random_range(50,room_width-50),random_range(room_height-240,room_height-40),"Instances_2",O_LevelAngel);
		}
		break;
	}
}

O_System.selpause = false;
pause = false;
instance_destroy(O_Sel);
