

//if(ww.moveSpeed > 1 && image_yscale < size * moveSpeed * 64){ image_yscale += 4; }
//if(ww.moveSpeed <= 1 && image_yscale > size * moveSpeed * 4){ image_yscale -= 4; }

y += ww.moveSpeed * moveSpeed;

if(y > room_height + 20){
	instance_destroy();
}