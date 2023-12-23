
if !pause{
	if !instance_exists(target){
		instance_destroy();
	}
	else{
		move_towards_point(target.x,target.y,3);
		if point_distance(x,y,target.x,target.y) <= 5 {
			target.hit = 1;
			target.hp-=dmg;
			if from != -4 {
				if from.object_index == O_LevelAngel{
					if target.hp <= dmg{
						from.level++;
					}
				}
			}
			instance_destroy();
		}
	}
}
else{
	speed = 0;
}
