function getCard(n){
	var c = {
		nam: n,
		obj: objCard,
		img: imgRoom,
		atk: 1, def: 1,
	};
	
	if(n == "Hull Station"){
		c.img = imgRoom01;
		c.atk = 1;
		c.def = 6;
	}
	
	if(n == "Gunnery"){
		c.img = imgRoom02;
		c.atk = 4;
		c.def = 1;
	}
	
	if(n == "Wheele"){
		c.img = imgRoom03;
		c.atk = 2;
		c.def = 3;
	}
	
	
	
	return c;
}