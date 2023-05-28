function initShop(){
	
	ww.stage ++;
	
	with(objCard){ instance_destroy(); }
		putCards(ww.pc.deck, true, false);
		//spawn store
		var b = instance_create_depth(64 * 17, 64 * 8, ww.layerShip, objButton);
		b.txt = "Next";
			
	ww.inBattle = false;
	
	
	
	storeCards = [noone,noone,noone,noone,noone,noone,noone,noone,noone,noone];
	for(var i=0; i<5; i++){
		storeCards[i] = getCard(randomCard());
		//storeCards[i].isStoreCard = true;
	}
	putCards(storeCards, false, true);
	
	
	
}