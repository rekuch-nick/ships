function mouseoverSlot(){
	
	
	var xx = floor(mouse_x / 64);
	var yy = floor(mouse_y / 64);
	
	if(yy >= 7 && yy <= 9){
		if(xx >= 2 && xx <= 4){ return 0; }
		if(xx >= 5 && xx <= 7){ return 1; }
		if(xx >= 8 && xx <= 11){ return 2; }
		if(xx >= 11 && xx <= 13){ return 3; }
		if(xx >= 14 && xx <= 16){ return 4; }
	}
	if(yy >= 10 && yy <= 12){
		if(xx >= 2 && xx <= 4){ return 5; }
		if(xx >= 5 && xx <= 7){ return 6; }
		if(xx >= 8 && xx <= 11){ return 7; }
		if(xx >= 11 && xx <= 13){ return 8; }
		if(xx >= 14 && xx <= 16){ return 9; }
	}
	
	return -1;
}