function initCombat(){
	ww.playerTurn = true;
	with(objCard){ instance_destroy(); }
	
	ww.foe = {};
	ww.foe.deck = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
	
	ww.stage ++;
	
	
	ww.foe.deck[9] = getCard("Empty Room");
	for(var i=0; i<9; i++){
		ww.foe.deck[i] = getCard(randomCard());
	}
	ww.inBattle = true;
	
	putCards(ww.pc.deck, true, false);
	putCards(ww.foe.deck, false, false);
	
	instance_create_depth(-20, -20, ww.layerEff, objEffBeam);
}