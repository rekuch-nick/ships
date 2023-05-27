function putCards(deck, low){
	
	var a = 64 * 3;
	var b = low ? 64*6 : 0;
	
	for(var i=0; i<6; i++){
		
		if(deck[i] != noone){
			
			var r = instance_create_depth(a, b, ww.layerShip, deck[i].obj);
			
		}
		
		
		a += 64*3;
		if(a > 64*9){ a -= 64*9; b += 64*2; }
	}
	
}