draw_set_font(fntPlain);
layerStar = -10;
layerShip = -100;

moveSpeed = 1;

pc = {};
pc.deck = [noone, noone, noone, noone, noone, noone];
foe = {};
foe.deck = [noone, noone, noone, noone, noone, noone];

for(var i=0; i<6; i++){
	pc.deck[i] = getCard("Empty Room");
	foe.deck[i] = getCard("Empty Room");
	
	
}

putCards(pc.deck, true);
putCards(foe.deck, false);