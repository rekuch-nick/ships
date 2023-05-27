function cardTurn(){
	
	if(action == ""){
		action = "shoot";
		
		var t = chooseTarget();
		instance_create_depth(x + 96, y + 96, ww.layerEff, objEffBeam);
	}
	
	
	
	
	
	if(instance_number(objEffectWait) < 1){
		
		action = "";
		acting = false;
		acted = true;
		ww.playerTurn = !ww.playerTurn;
	}
	
	
}