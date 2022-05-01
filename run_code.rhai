
let first_x=0;
let first_y=0;
if "current_tick" in memory == false {
    memory.current_tick = 0;
    memory.first_x = worker(5).x;
    memory.first_y = worker(0).y;
} else {
    memory.current_tick += 1;
}

let cuadrante = 0;
if memory.first_x < 20 {
    cuadrante = [4,3];
    if memory.first_y <20{
        cuadrante = cuadrante[1];
    } else {
        cuadrante = cuadrante[0];
}

} else if  memory.first_x > 20{
    cuadrante = [1,2];
    if memory.first_y <20{
        cuadrante = cuadrante[1];
    } else {
        cuadrante = cuadrante[0];

}
}


fn funcion1(worker) {
    
    switch worker {
        2 => return [17,17],
        3 => return [18,17],
        1 => return [19,16],
        0 => return [19,15],
        5 => return [20,17],
        4 => return [21,17],
        6 => return [19,18],
        7 => return [19,19]
    }
}
  

if cuadrante == 1 {  
for w in 0..3 {
    
    let x_0 = funcion1(w)[0];
    let y_0 = funcion1(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x > 0 {
            worker(w).move_left();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y > 0 {
            worker(w).move_down();
        }
   }
}


if memory.current_tick > 2 {
for w in 3..5 {
    
    let x_0 = funcion1(w)[0];
    let y_0 = funcion1(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x > 0 {
            worker(w).move_left();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y > 0 {
            worker(w).move_down();
        }
   }
}
}

if memory.current_tick > 4 {

for w in 5..8 {
    
    let x_0 = funcion1(w)[0];
    let y_0 = funcion1(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
        if distance_x > 0 {
            worker(w).move_left();
        }
    } else if distance_y.abs() > 0{
        
        if distance_y > 0 {
            worker(w).move_down();
        }
   }
}
}



if memory.current_tick > 478 {

    worker(2).move_left();
    worker(0).move_down();
    worker(7).move_up();
    worker(4).move_right();
}

if memory.current_tick > 490 {
    
    worker(3).move_left();
    worker(1).move_down();
    worker(6).move_up();
    worker(5).move_right();
}
}
/////////////////////////////////////////

 
fn funcion2(worker) {
    
    switch worker {
        0 => return [17,17],
        4 => return [18,17],
        6 => return [19,16],
        5 => return [19,15],
        7 => return [20,17],
        3 => return [21,17],
        1 => return [19,18],
        2 => return [19,19]
    }
}
    
if cuadrante == 2 {  
for w in [2,1,0] {
    
    let x_0 = funcion2(w)[0];
    let y_0 = funcion2(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x > 0 {
            worker(w).move_left();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y < 0 {
            worker(w).move_up();
        }
   }
}


if memory.current_tick > 2 {
for w in [4,3] {
    
    let x_0 = funcion2(w)[0];
    let y_0 = funcion2(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x > 0 {
            worker(w).move_left();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y < 0 {
            worker(w).move_up();
        }
   }
}
}

if memory.current_tick > 4 {

for w in [7,6,5] {
    
    let x_0 = funcion2(w)[0];
    let y_0 = funcion2(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x > 0 {
            worker(w).move_left();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y < 0 {
            worker(w).move_up();
        }
   }
}
}



if memory.current_tick > 478 {

    worker(0).move_left();
    worker(5).move_down();
    worker(2).move_up();
    worker(3).move_right();
}

if memory.current_tick > 490 {
    
    worker(4).move_left();
    worker(6).move_down();
    worker(1).move_up();
    worker(7).move_right();
}
}

//////////////////////////

fn funcion3(worker) {
    
    switch worker {
        3 => return [17,17],
        2 => return [18,17],
        1 => return [19,16],
        0 => return [19,15],
        4 => return [20,17],
        5 => return [21,17],
        6 => return [19,18],
        7 => return [19,19]
    }
}
    
if cuadrante == 3 {  
for w in [7,6,5] {
    
    let x_0 = funcion3(w)[0];
    let y_0 = funcion3(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x < 0 {
            worker(w).move_right();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y < 0 {
            worker(w).move_up();
        }
   }
}


if memory.current_tick > 2 {
for w in [3,4] {
    
    let x_0 = funcion3(w)[0];
    let y_0 = funcion3(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x < 0 {
            worker(w).move_right();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y < 0 {
            worker(w).move_up();
        }
   }
}
}

if memory.current_tick > 4 {

for w in [2,1,0] {
    
    let x_0 = funcion3(w)[0];
    let y_0 = funcion3(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x < 0 {
            worker(w).move_right();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y < 0 {
            worker(w).move_up();
        }
   }
}
}



if memory.current_tick > 478 {

    worker(3).move_left();
    worker(0).move_down();
    worker(7).move_up();
    worker(5).move_right();
}

if memory.current_tick > 490 {
    
    worker(2).move_left();
    worker(1).move_down();
    worker(6).move_up();
    worker(4).move_right();
}
}

/////////////////////

fn funcion4(worker) {
    
    switch worker {
        4 => return [17,17],
        0 => return [18,17],
        6 => return [19,16],
        5 => return [19,15],
        3 => return [20,17],
        7 => return [21,17],
        1 => return [19,18],
        2 => return [19,19]
    }
}
    
if cuadrante == 4 {  
for w in [5,6,7] {
    
    let x_0 = funcion4(w)[0];
    let y_0 = funcion4(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x < 0 {
            worker(w).move_right();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y > 0 {
            worker(w).move_down();
        }
   }
}


if memory.current_tick > 2 {
for w in [4,3] {
    
    let x_0 = funcion4(w)[0];
    let y_0 = funcion4(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x < 0 {
            worker(w).move_right();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y > 0 {
            worker(w).move_down();
        }
   }
}
}

if memory.current_tick > 4 {

for w in [0,1,2] {
    
    let x_0 = funcion4(w)[0];
    let y_0 = funcion4(w)[1];
    
    let distance_x = worker(w).x - x_0;
    let distance_y = worker(w).y - y_0;
    
    
    if distance_x.abs() > 0 {
        
         if distance_x < 0 {
            worker(w).move_right();
        }
    } else if distance_y.abs() > 0{
        
         if distance_y > 0 {
            worker(w).move_down();
        }
   }
}
}



if memory.current_tick > 478 {

    worker(4).move_left();
    worker(5).move_down();
    worker(2).move_up();
    worker(7).move_right();
}

if memory.current_tick > 490 {
    
    worker(0).move_left();
    worker(6).move_down();
    worker(1).move_up();
    worker(3).move_right();
}
}



































