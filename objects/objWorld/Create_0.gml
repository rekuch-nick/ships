draw_set_font(fntPlain);
draw_set_halign(fa_center);
room_speed = 120;
layerStar = -10;
layerShip = -100;
layerEff = -500;

moveSpeed = 1;
stage = 0;
isStore = false;
playerTurn = true;
inBattle = true;
grabbed = noone;
pc = {};
pc.deck = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];
pc.coins = 30;
foe = {};
foe.deck = [noone, noone, noone, noone, noone, noone, noone, noone, noone, noone];

//for(var i=1; i<4; i++){ pc.deck[i] = getCard("Empty Room"); }
//initCombat();
initShop();


for(var b=0; b<room_height; b++){
	instance_create_depth(irandom_range(0, room_width), b, layerStar, objStar);
}







