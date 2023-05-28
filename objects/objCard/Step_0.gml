


if(!ww.inBattle){
	if(mouse_check_button(mb_left)){
	
	
	
		if(mouse_x >= x && mouse_y >= y && mouse_x < x+sprite_width && mouse_y < y+sprite_height){
			if(ww.grabbed = noone){
				grabbed = true;
				ww.grabbed = id;
				depth = ww.layerShip - 1;
			}
		}
	
		if(grabbed){
			x = mouse_x - 96;
			y = mouse_y - 96;
		}
	
	
	} else {
		if(grabbed){
			if(isStoreCard){
				if(ww.pc.coins >= cost){
					var n = mouseoverSlot();
					if(n != -1){
						if(ww.pc.deck[n] == noone){
							aly = true;
							ww.pc.deck[n] = copyCard(id);
							ww.pc.coins -= cost;
							respawnPlayerCards();
						}
					}
				}
			} else if(aly){
				if(numberPlayerCards() > 1){
					if(mouse_y < 64 * 5){
						ww.pc.coins ++;
						ww.pc.deck[slot] = noone;
						respawnPlayerCards();
					} else {
						var n = mouseoverSlot();
						if(n != -1){
							var temp = ww.pc.deck[slot];
							ww.pc.deck[slot] = ww.pc.deck[n];
							ww.pc.deck[n] = temp;
							respawnPlayerCards();
						}
					}
				}
			}
			
		
		
		
			grabbed = false; ww.grabbed = noone; x = xStart; y = yStart;
			depth = ww.layerShip;
		}
	}
}

