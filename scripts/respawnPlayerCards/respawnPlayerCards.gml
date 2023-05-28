function respawnPlayerCards(){
	with(objCard){
		if(aly){
			instance_destroy();
		}
	}
	
	putCards(ww.pc.deck, true, false);
}