function battleStep(){
	
	
	
	var ac = activeCard();
	if(ac != noone){
		
		
		with(ac){ cardTurn(); }
		
		//progress card turn
		
		
	} else {
		if(instance_number(objEffectWait) > 0){ return; }
		
		//check for end of battle
		var playerCards = 0;
		var foeCards = 0;
		with(objCard){
			if(aly){ playerCards ++; }
			if(!aly){ foeCards ++; }
		}
		
		var over = false;
		if(foeCards < 1){
			// end and win
			over = true;
		} else if(playerCards < 1){
			//end and lose
			over = true;
		} else {
			
			// if battle not over, set next card to active
			var c = noone;
			for(var i=0; i<10; i++){
				c = readyCard(ww.playerTurn, i);
				if(c != noone){
					break;
				}				
			}
			if(c == noone){
				with(objCard){
					if(aly == ww.playerTurn){
						acted = false;
					}
				}
			} else {
				c.acting = true;
			}
			
			
		}
		
		if(over){
			initShop();
			
		}
		
		
	
	}
	
	
	
	
	

}