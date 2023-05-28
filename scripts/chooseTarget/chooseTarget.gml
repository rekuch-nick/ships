function chooseTarget(){
	
	var possible = [];
	
	
	with(objCard){
		if(other.aly != aly){
			
			if(slot < 5){
				possible[array_length(possible)] = id;
			}
			
		}
	}
	
	if(array_length(possible) < 1){
		with(objCard){
			if(other.aly != aly){
				possible[array_length(possible)] = id;
			}
		}
	}
	
	
	return possible[irandom_range(0, array_length(possible) - 1)];
	
}