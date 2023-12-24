
if hp <= 0{
	var odd = irandom(5);
	if odd == 1 {instance_create_layer(x,y,"Instances_2",O_Coin);}
	instance_create_layer(x,y,"Instances_2",O_Exp);
	instance_destroy();
}
