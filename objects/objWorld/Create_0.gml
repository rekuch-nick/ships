draw_set_font(fntPlain);
draw_set_halign(fa_center);
room_speed = 30;
layerStar = -10;
layerShip = -100;
layerEff = -500;

moveSpeed = 1;

playerTurn = true;
inBattle = true;

pc = {};
pc.deck = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
foe = {};
foe.deck = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];

for(var i=0; i<10; i++){
	pc.deck[i] = getCard("Empty Room");
	foe.deck[i] = getCard("Empty Room");
	
	
}

putCards(pc.deck, true);
putCards(foe.deck, false);