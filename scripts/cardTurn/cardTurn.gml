function cardTurn(){
	
	if(action == ""){
		action = "shoot";
		
		var t = chooseTarget();
		
		
		
		var a = x + 96; 
		var b = y + 96;
		b += aly ? -96 : 96;
		var angle = arctan2((t.y+96) - b, (t.x+96) - a);
		var ms = 8;
		var xs = cos(angle) * ms;
		var ys = sin(angle) * ms;
		var dis = point_distance(a, b, t.x+96, t.y+96);
		while(dis > 0){
			instance_create_depth(a, b, ww.layerEff, objEffBeam);
			a += xs; b += ys;
			dis -= ms;
		}
		//repeat(100){ instance_create_depth(t.x + 96 + irandom_range(-16, 16), t.y + 96 + irandom_range(-16, 16), ww.layerEff, objEffSpark);  }
		effect_create_above(ef_ring, t.x+96, t.y+96, 1, c_yellow)
		effect_create_above(ef_ring, t.x+96, t.y+96, 1, c_red)
		
		
		var dam = atk;
		t.def = max(t.def - dam, 0);
		
		if(t.def < 1){
			instance_destroy(t);
		}
		
	}
	
	
	
	
	
	if(instance_number(objEffectWait) < 1){
		
		action = "";
		acting = false;
		acted = true;
		ww.playerTurn = !ww.playerTurn;
	}
	
	
}