function putCards(deck, low, isStore){
	
	var a = 64 * 2;
	var b = low ? 64*7 : 64*3;
	
	if(isStore){ b = 96; }
	
	for(var i=0; i<10; i++){
		
		if(deck[i] != noone){
			
			var r = instance_create_depth(a, b, ww.layerShip, deck[i].obj);
			r.nam = deck[i].nam;
			r.obj = deck[i].obj;
			r.def = deck[i].def;
			r.atk = deck[i].atk;
			r.defMax = r.def;
			r.aly = low;
			r.slot = i;
			r.img = deck[i].img;
			r.isStoreCard = isStore;
		}
		
		
		a += 64*3;
		if(low){
			if(a > 64*15){ a -= 64*15; b += 64*3; }
		} else {
			if(a > 64*15){ a -= 64*15; b -= 64*3; }
		}
	}
	
	
}