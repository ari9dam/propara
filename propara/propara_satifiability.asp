observedAt("travel","what v into something ?","air",1).
lvalue("air","air").
observedAt("travel","where does something v ?","into the body",1).
lvalue("into the body","body").
observedAt("travel","what does something v into ?","the body",1).
lvalue("the body","body").
observedAt("reach","what v something ?","air",2).
lvalue("air","air").
observedAt("reach","what does something v ?","the lungs",2).
lvalue("the lungs","lung").
observedAt("absorb","what v something ?","the lungs",3).
lvalue("the lungs","lung").
observedAt("absorb","what does something v ?","the oxygen",3).
observedAt("absorb","where does something v something from ?","from the air",3).
lvalue("from the air","air").
observedAt("absorb","what does something v something from ?","the air",3).
lvalue("the air","air").
observedAt("transport","what is v by something ?","the oxygen",4).
observedAt("transport","what is v ?","oxygen",4).
observedAt("transport","how is something v ?","by hemoglobin",4).
lvalue("by hemoglobin","hemoglobin").
observedAt("transport","what is something v by ?","hemoglobin",4).
lvalue("hemoglobin","hemoglobin").
observedAt("make","what is v of something ?","red blood cells",5).
lvalue("red blood cells","red blood cell").
observedAt("make","what is something v of ?","hemoglobin",5).
lvalue("hemoglobin","hemoglobin").
observedAt("have","what v something ?","blood",6).
lvalue("blood","blood").
observedAt("have","what does something v ?","a lot of red blood cells",6).
lvalue("a lot of red blood cells","red blood cell").
observedAt("move","what v something ?","the heart",7).
observedAt("move","what does something v ?","the blood",7).
lvalue("the blood","blood").
observedAt("move","where does something v something ?","throughout the body",7).
lvalue("throughout the body","body").
observedAt("bring","what can v something ?","blood",8).
lvalue("blood","blood").
observedAt("bring","what can something v ?","the oxygen",8).
observedAt("bring","where can something be v ?","to different cells in the body",8).
lvalue("to different cells in the body","different cell in the body").
observedAt("bring","what can something be v to ?","different cells in the body",8).
lvalue("different cells in the body","different cell in the body").
observedAt("bring","where can something v something ?","in the body",8).
lvalue("in the body","body").
time(1..8).
participant(p1;p2;p3;p4;p5).
description(p1,"air").
description(p2,"oxygen").
description(p3,"hemoglobin").
description(p4,"red blood cells").
description(p5,"blood").
annotator(a1;a2;a3;a4;a5).
annotation(a1, p1, 1) :- holdsAt(locationOf(p1,"?"),1).
annotation(a2, p1, 1) :- holdsAt(locationOf(p1,"?"),1).
annotation(a3, p1, 1) :- holdsAt(locationOf(p1,"?"),1).
annotation(a4, p1, 1) :- holdsAt(locationOf(p1,"?"),1).
annotation(a5, p1, 1) :- holdsAt(locationOf(p1,"?"),1).
annotation(a1, p2, 1) :- holdsAt(locationOf(p2,"air"),1).
annotation(a2, p2, 1) :- holdsAt(locationOf(p2,"air"),1).
annotation(a3, p2, 1) :- holdsAt(locationOf(p2,"?"),1).
annotation(a4, p2, 1) :- holdsAt(locationOf(p2,"?"),1).
annotation(a5, p2, 1) :- holdsAt(locationOf(p2,"air"),1).
annotation(a1, p3, 1) :- holdsAt(locationOf(p3,"blood"),1).
annotation(a2, p3, 1) :- holdsAt(locationOf(p3,"red blood cell"),1).
annotation(a3, p3, 1) :- holdsAt(locationOf(p3,"blood"),1).
annotation(a4, p3, 1) :- holdsAt(locationOf(p3,"?"),1).
annotation(a5, p3, 1) :- holdsAt(locationOf(p3,"red blood cell"),1).
annotation(a1, p4, 1) :- holdsAt(locationOf(p4,"blood"),1).
annotation(a2, p4, 1) :- holdsAt(locationOf(p4,"blood"),1).
annotation(a3, p4, 1) :- holdsAt(locationOf(p4,"blood"),1).
annotation(a4, p4, 1) :- holdsAt(locationOf(p4,"?"),1).
annotation(a5, p4, 1) :- holdsAt(locationOf(p4,"blood"),1).
annotation(a1, p5, 1) :- holdsAt(locationOf(p5,"body"),1).
annotation(a2, p5, 1) :- holdsAt(locationOf(p5,"body"),1).
annotation(a3, p5, 1) :- holdsAt(locationOf(p5,"body"),1).
annotation(a4, p5, 1) :- holdsAt(locationOf(p5,"?"),1).
annotation(a5, p5, 1) :- holdsAt(locationOf(p5,"body"),1).
annotation(a1, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a2, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a3, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a4, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a5, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a1, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a2, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a3, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a4, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a5, p1, 2) :- holdsAt(locationOf(p1,"body"),2).
annotation(a1, p2, 2) :- holdsAt(locationOf(p2,"air"),2).
annotation(a2, p2, 2) :- holdsAt(locationOf(p2,"air"),2).
annotation(a3, p2, 2) :- holdsAt(locationOf(p2,"body"),2).
annotation(a4, p2, 2) :- holdsAt(locationOf(p2,"?"),2).
annotation(a5, p2, 2) :- holdsAt(locationOf(p2,"air"),2).
annotation(a1, p2, 2) :- holdsAt(locationOf(p2,"air"),2).
annotation(a2, p2, 2) :- holdsAt(locationOf(p2,"air"),2).
annotation(a3, p2, 2) :- holdsAt(locationOf(p2,"body"),2).
annotation(a4, p2, 2) :- holdsAt(locationOf(p2,"?"),2).
annotation(a5, p2, 2) :- holdsAt(locationOf(p2,"air"),2).
annotation(a1, p3, 2) :- holdsAt(locationOf(p3,"blood"),2).
annotation(a2, p3, 2) :- holdsAt(locationOf(p3,"red blood cell"),2).
annotation(a3, p3, 2) :- holdsAt(locationOf(p3,"blood"),2).
annotation(a4, p3, 2) :- holdsAt(locationOf(p3,"?"),2).
annotation(a5, p3, 2) :- holdsAt(locationOf(p3,"red blood cell"),2).
annotation(a1, p3, 2) :- holdsAt(locationOf(p3,"blood"),2).
annotation(a2, p3, 2) :- holdsAt(locationOf(p3,"red blood cell"),2).
annotation(a3, p3, 2) :- holdsAt(locationOf(p3,"blood"),2).
annotation(a4, p3, 2) :- holdsAt(locationOf(p3,"?"),2).
annotation(a5, p3, 2) :- holdsAt(locationOf(p3,"red blood cell"),2).
annotation(a1, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a2, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a3, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a4, p4, 2) :- holdsAt(locationOf(p4,"?"),2).
annotation(a5, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a1, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a2, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a3, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a4, p4, 2) :- holdsAt(locationOf(p4,"?"),2).
annotation(a5, p4, 2) :- holdsAt(locationOf(p4,"blood"),2).
annotation(a1, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a2, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a3, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a4, p5, 2) :- holdsAt(locationOf(p5,"?"),2).
annotation(a5, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a1, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a2, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a3, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a4, p5, 2) :- holdsAt(locationOf(p5,"?"),2).
annotation(a5, p5, 2) :- holdsAt(locationOf(p5,"body"),2).
annotation(a1, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a2, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a3, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a4, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a5, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a1, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a2, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a3, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a4, p1, 3) :- holdsAt(locationOf(p1,"?"),3).
annotation(a5, p1, 3) :- holdsAt(locationOf(p1,"lung"),3).
annotation(a1, p2, 3) :- holdsAt(locationOf(p2,"air"),3).
annotation(a2, p2, 3) :- holdsAt(locationOf(p2,"air"),3).
annotation(a3, p2, 3) :- holdsAt(locationOf(p2,"lung"),3).
annotation(a4, p2, 3) :- holdsAt(locationOf(p2,"?"),3).
annotation(a5, p2, 3) :- holdsAt(locationOf(p2,"lung"),3).
annotation(a1, p2, 3) :- holdsAt(locationOf(p2,"lung"),3).
annotation(a2, p2, 3) :- holdsAt(locationOf(p2,"air"),3).
annotation(a3, p2, 3) :- holdsAt(locationOf(p2,"lung"),3).
annotation(a4, p2, 3) :- holdsAt(locationOf(p2,"air"),3).
annotation(a5, p2, 3) :- holdsAt(locationOf(p2,"lung"),3).
annotation(a1, p3, 3) :- holdsAt(locationOf(p3,"blood"),3).
annotation(a2, p3, 3) :- holdsAt(locationOf(p3,"red blood cell"),3).
annotation(a3, p3, 3) :- holdsAt(locationOf(p3,"blood"),3).
annotation(a4, p3, 3) :- holdsAt(locationOf(p3,"?"),3).
annotation(a5, p3, 3) :- holdsAt(locationOf(p3,"red blood cell"),3).
annotation(a1, p3, 3) :- holdsAt(locationOf(p3,"blood"),3).
annotation(a2, p3, 3) :- holdsAt(locationOf(p3,"red blood cell"),3).
annotation(a3, p3, 3) :- holdsAt(locationOf(p3,"blood"),3).
annotation(a4, p3, 3) :- holdsAt(locationOf(p3,"?"),3).
annotation(a5, p3, 3) :- holdsAt(locationOf(p3,"red blood cell"),3).
annotation(a1, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a2, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a3, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a4, p4, 3) :- holdsAt(locationOf(p4,"?"),3).
annotation(a5, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a1, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a2, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a3, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a4, p4, 3) :- holdsAt(locationOf(p4,"?"),3).
annotation(a5, p4, 3) :- holdsAt(locationOf(p4,"blood"),3).
annotation(a1, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a2, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a3, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a4, p5, 3) :- holdsAt(locationOf(p5,"?"),3).
annotation(a5, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a1, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a2, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a3, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a4, p5, 3) :- holdsAt(locationOf(p5,"?"),3).
annotation(a5, p5, 3) :- holdsAt(locationOf(p5,"body"),3).
annotation(a1, p1, 4) :- holdsAt(locationOf(p1,"lung"),4).
annotation(a2, p1, 4) :- holdsAt(locationOf(p1,"?"),4).
annotation(a3, p1, 4) :- holdsAt(locationOf(p1,"lung"),4).
annotation(a4, p1, 4) :- holdsAt(locationOf(p1,"?"),4).
annotation(a5, p1, 4) :- holdsAt(locationOf(p1,"lung"),4).
annotation(a1, p1, 4) :- holdsAt(locationOf(p1,"lung"),4).
annotation(a2, p1, 4) :- holdsAt(locationOf(p1,"?"),4).
annotation(a3, p1, 4) :- holdsAt(locationOf(p1,"lung"),4).
annotation(a4, p1, 4) :- holdsAt(locationOf(p1,"?"),4).
annotation(a5, p1, 4) :- holdsAt(locationOf(p1,"lung"),4).
annotation(a1, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a2, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a3, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a4, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a5, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a1, p2, 4) :- holdsAt(locationOf(p2,"hemoglobin"),4).
annotation(a2, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a3, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a4, p2, 4) :- holdsAt(locationOf(p2,"?"),4).
annotation(a5, p2, 4) :- holdsAt(locationOf(p2,"lung"),4).
annotation(a1, p3, 4) :- holdsAt(locationOf(p3,"blood"),4).
annotation(a2, p3, 4) :- holdsAt(locationOf(p3,"red blood cell"),4).
annotation(a3, p3, 4) :- holdsAt(locationOf(p3,"blood"),4).
annotation(a4, p3, 4) :- holdsAt(locationOf(p3,"?"),4).
annotation(a5, p3, 4) :- holdsAt(locationOf(p3,"red blood cell"),4).
annotation(a1, p3, 4) :- holdsAt(locationOf(p3,"blood"),4).
annotation(a2, p3, 4) :- holdsAt(locationOf(p3,"red blood cell"),4).
annotation(a3, p3, 4) :- holdsAt(locationOf(p3,"blood"),4).
annotation(a4, p3, 4) :- holdsAt(locationOf(p3,"?"),4).
annotation(a5, p3, 4) :- holdsAt(locationOf(p3,"red blood cell"),4).
annotation(a1, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a2, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a3, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a4, p4, 4) :- holdsAt(locationOf(p4,"?"),4).
annotation(a5, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a1, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a2, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a3, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a4, p4, 4) :- holdsAt(locationOf(p4,"?"),4).
annotation(a5, p4, 4) :- holdsAt(locationOf(p4,"blood"),4).
annotation(a1, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a2, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a3, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a4, p5, 4) :- holdsAt(locationOf(p5,"?"),4).
annotation(a5, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a1, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a2, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a3, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a4, p5, 4) :- holdsAt(locationOf(p5,"?"),4).
annotation(a5, p5, 4) :- holdsAt(locationOf(p5,"body"),4).
annotation(a1, p1, 5) :- holdsAt(locationOf(p1,"lung"),5).
annotation(a2, p1, 5) :- holdsAt(locationOf(p1,"?"),5).
annotation(a3, p1, 5) :- holdsAt(locationOf(p1,"hemoglobin"),5).
annotation(a4, p1, 5) :- holdsAt(locationOf(p1,"?"),5).
annotation(a5, p1, 5) :- holdsAt(locationOf(p1,"lung"),5).
annotation(a1, p1, 5) :- holdsAt(locationOf(p1,"lung"),5).
annotation(a2, p1, 5) :- holdsAt(locationOf(p1,"?"),5).
annotation(a3, p1, 5) :- holdsAt(locationOf(p1,"hemoglobin"),5).
annotation(a4, p1, 5) :- holdsAt(locationOf(p1,"?"),5).
annotation(a5, p1, 5) :- holdsAt(locationOf(p1,"lung"),5).
annotation(a1, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a2, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a3, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a4, p2, 5) :- holdsAt(locationOf(p2,"?"),5).
annotation(a5, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a1, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a2, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a3, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a4, p2, 5) :- holdsAt(locationOf(p2,"?"),5).
annotation(a5, p2, 5) :- holdsAt(locationOf(p2,"hemoglobin"),5).
annotation(a1, p3, 5) :- holdsAt(locationOf(p3,"blood"),5).
annotation(a2, p3, 5) :- holdsAt(locationOf(p3,"red blood cell"),5).
annotation(a3, p3, 5) :- holdsAt(locationOf(p3,"blood"),5).
annotation(a4, p3, 5) :- holdsAt(locationOf(p3,"?"),5).
annotation(a5, p3, 5) :- holdsAt(locationOf(p3,"red blood cell"),5).
annotation(a1, p3, 5) :- holdsAt(locationOf(p3,"blood"),5).
annotation(a2, p3, 5) :- holdsAt(locationOf(p3,"red blood cell"),5).
annotation(a3, p3, 5) :- holdsAt(locationOf(p3,"blood"),5).
annotation(a4, p3, 5) :- holdsAt(locationOf(p3,"?"),5).
annotation(a5, p3, 5) :- holdsAt(locationOf(p3,"red blood cell"),5).
annotation(a1, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a2, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a3, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a4, p4, 5) :- holdsAt(locationOf(p4,"?"),5).
annotation(a5, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a1, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a2, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a3, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a4, p4, 5) :- holdsAt(locationOf(p4,"?"),5).
annotation(a5, p4, 5) :- holdsAt(locationOf(p4,"blood"),5).
annotation(a1, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a2, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a3, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a4, p5, 5) :- holdsAt(locationOf(p5,"?"),5).
annotation(a5, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a1, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a2, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a3, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a4, p5, 5) :- holdsAt(locationOf(p5,"?"),5).
annotation(a5, p5, 5) :- holdsAt(locationOf(p5,"body"),5).
annotation(a1, p1, 6) :- holdsAt(locationOf(p1,"lung"),6).
annotation(a2, p1, 6) :- holdsAt(locationOf(p1,"?"),6).
annotation(a3, p1, 6) :- holdsAt(locationOf(p1,"hemoglobin"),6).
annotation(a4, p1, 6) :- holdsAt(locationOf(p1,"?"),6).
annotation(a5, p1, 6) :- holdsAt(locationOf(p1,"lung"),6).
annotation(a1, p1, 6) :- holdsAt(locationOf(p1,"lung"),6).
annotation(a2, p1, 6) :- holdsAt(locationOf(p1,"?"),6).
annotation(a3, p1, 6) :- holdsAt(locationOf(p1,"hemoglobin"),6).
annotation(a4, p1, 6) :- holdsAt(locationOf(p1,"?"),6).
annotation(a5, p1, 6) :- holdsAt(locationOf(p1,"lung"),6).
annotation(a1, p2, 6) :- holdsAt(locationOf(p2,"hemoglobin"),6).
annotation(a2, p2, 6) :- holdsAt(locationOf(p2,"red blood cell"),6).
annotation(a3, p2, 6) :- holdsAt(locationOf(p2,"hemoglobin"),6).
annotation(a4, p2, 6) :- holdsAt(locationOf(p2,"?"),6).
annotation(a5, p2, 6) :- holdsAt(locationOf(p2,"red blood cell"),6).
annotation(a1, p2, 6) :- holdsAt(locationOf(p2,"hemoglobin"),6).
annotation(a2, p2, 6) :- holdsAt(locationOf(p2,"red blood cell"),6).
annotation(a3, p2, 6) :- holdsAt(locationOf(p2,"hemoglobin"),6).
annotation(a4, p2, 6) :- holdsAt(locationOf(p2,"?"),6).
annotation(a5, p2, 6) :- holdsAt(locationOf(p2,"red blood cell"),6).
annotation(a1, p3, 6) :- holdsAt(locationOf(p3,"blood"),6).
annotation(a2, p3, 6) :- holdsAt(locationOf(p3,"red blood cell"),6).
annotation(a3, p3, 6) :- holdsAt(locationOf(p3,"blood"),6).
annotation(a4, p3, 6) :- holdsAt(locationOf(p3,"?"),6).
annotation(a5, p3, 6) :- holdsAt(locationOf(p3,"red blood cell"),6).
annotation(a1, p3, 6) :- holdsAt(locationOf(p3,"blood"),6).
annotation(a2, p3, 6) :- holdsAt(locationOf(p3,"red blood cell"),6).
annotation(a3, p3, 6) :- holdsAt(locationOf(p3,"blood"),6).
annotation(a4, p3, 6) :- holdsAt(locationOf(p3,"?"),6).
annotation(a5, p3, 6) :- holdsAt(locationOf(p3,"red blood cell"),6).
annotation(a1, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a2, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a3, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a4, p4, 6) :- holdsAt(locationOf(p4,"?"),6).
annotation(a5, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a1, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a2, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a3, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a4, p4, 6) :- holdsAt(locationOf(p4,"?"),6).
annotation(a5, p4, 6) :- holdsAt(locationOf(p4,"blood"),6).
annotation(a1, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a2, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a3, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a4, p5, 6) :- holdsAt(locationOf(p5,"?"),6).
annotation(a5, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a1, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a2, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a3, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a4, p5, 6) :- holdsAt(locationOf(p5,"?"),6).
annotation(a5, p5, 6) :- holdsAt(locationOf(p5,"body"),6).
annotation(a1, p1, 7) :- holdsAt(locationOf(p1,"lung"),7).
annotation(a2, p1, 7) :- holdsAt(locationOf(p1,"?"),7).
annotation(a3, p1, 7) :- holdsAt(locationOf(p1,"hemoglobin"),7).
annotation(a4, p1, 7) :- holdsAt(locationOf(p1,"?"),7).
annotation(a5, p1, 7) :- holdsAt(locationOf(p1,"lung"),7).
annotation(a1, p1, 7) :- holdsAt(locationOf(p1,"lung"),7).
annotation(a2, p1, 7) :- holdsAt(locationOf(p1,"?"),7).
annotation(a3, p1, 7) :- holdsAt(locationOf(p1,"hemoglobin"),7).
annotation(a4, p1, 7) :- holdsAt(locationOf(p1,"?"),7).
annotation(a5, p1, 7) :- holdsAt(locationOf(p1,"lung"),7).
annotation(a1, p2, 7) :- holdsAt(locationOf(p2,"hemoglobin"),7).
annotation(a2, p2, 7) :- holdsAt(locationOf(p2,"blood"),7).
annotation(a3, p2, 7) :- holdsAt(locationOf(p2,"hemoglobin"),7).
annotation(a4, p2, 7) :- holdsAt(locationOf(p2,"?"),7).
annotation(a5, p2, 7) :- holdsAt(locationOf(p2,"blood"),7).
annotation(a1, p2, 7) :- holdsAt(locationOf(p2,"hemoglobin"),7).
annotation(a2, p2, 7) :- holdsAt(locationOf(p2,"blood"),7).
annotation(a3, p2, 7) :- holdsAt(locationOf(p2,"hemoglobin"),7).
annotation(a4, p2, 7) :- holdsAt(locationOf(p2,"?"),7).
annotation(a5, p2, 7) :- holdsAt(locationOf(p2,"blood"),7).
annotation(a1, p3, 7) :- holdsAt(locationOf(p3,"blood"),7).
annotation(a2, p3, 7) :- holdsAt(locationOf(p3,"red blood cell"),7).
annotation(a3, p3, 7) :- holdsAt(locationOf(p3,"blood"),7).
annotation(a4, p3, 7) :- holdsAt(locationOf(p3,"?"),7).
annotation(a5, p3, 7) :- holdsAt(locationOf(p3,"red blood cell"),7).
annotation(a1, p3, 7) :- holdsAt(locationOf(p3,"blood"),7).
annotation(a2, p3, 7) :- holdsAt(locationOf(p3,"red blood cell"),7).
annotation(a3, p3, 7) :- holdsAt(locationOf(p3,"blood"),7).
annotation(a4, p3, 7) :- holdsAt(locationOf(p3,"?"),7).
annotation(a5, p3, 7) :- holdsAt(locationOf(p3,"red blood cell"),7).
annotation(a1, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a2, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a3, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a4, p4, 7) :- holdsAt(locationOf(p4,"?"),7).
annotation(a5, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a1, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a2, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a3, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a4, p4, 7) :- holdsAt(locationOf(p4,"?"),7).
annotation(a5, p4, 7) :- holdsAt(locationOf(p4,"blood"),7).
annotation(a1, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a2, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a3, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a4, p5, 7) :- holdsAt(locationOf(p5,"?"),7).
annotation(a5, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a1, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a2, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a3, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a4, p5, 7) :- holdsAt(locationOf(p5,"?"),7).
annotation(a5, p5, 7) :- holdsAt(locationOf(p5,"body"),7).
annotation(a1, p1, 8) :- holdsAt(locationOf(p1,"lung"),8).
annotation(a2, p1, 8) :- holdsAt(locationOf(p1,"?"),8).
annotation(a3, p1, 8) :- holdsAt(locationOf(p1,"body"),8).
annotation(a4, p1, 8) :- holdsAt(locationOf(p1,"?"),8).
annotation(a5, p1, 8) :- holdsAt(locationOf(p1,"lung"),8).
annotation(a1, p1, 8) :- holdsAt(locationOf(p1,"lung"),8).
annotation(a2, p1, 8) :- holdsAt(locationOf(p1,"?"),8).
annotation(a3, p1, 8) :- holdsAt(locationOf(p1,"body"),8).
annotation(a4, p1, 8) :- holdsAt(locationOf(p1,"?"),8).
annotation(a5, p1, 8) :- holdsAt(locationOf(p1,"lung"),8).
annotation(a1, p2, 8) :- holdsAt(locationOf(p2,"hemoglobin"),8).
annotation(a2, p2, 8) :- holdsAt(locationOf(p2,"body"),8).
annotation(a3, p2, 8) :- holdsAt(locationOf(p2,"body"),8).
annotation(a4, p2, 8) :- holdsAt(locationOf(p2,"?"),8).
annotation(a5, p2, 8) :- holdsAt(locationOf(p2,"body"),8).
annotation(a1, p2, 8) :- holdsAt(locationOf(p2,"hemoglobin"),8).
annotation(a2, p2, 8) :- holdsAt(locationOf(p2,"body"),8).
annotation(a3, p2, 8) :- holdsAt(locationOf(p2,"body"),8).
annotation(a4, p2, 8) :- holdsAt(locationOf(p2,"blood"),8).
annotation(a5, p2, 8) :- holdsAt(locationOf(p2,"blood"),8).
annotation(a1, p3, 8) :- holdsAt(locationOf(p3,"blood"),8).
annotation(a2, p3, 8) :- holdsAt(locationOf(p3,"red blood cell"),8).
annotation(a3, p3, 8) :- holdsAt(locationOf(p3,"blood"),8).
annotation(a4, p3, 8) :- holdsAt(locationOf(p3,"?"),8).
annotation(a5, p3, 8) :- holdsAt(locationOf(p3,"red blood cell"),8).
annotation(a1, p3, 8) :- holdsAt(locationOf(p3,"blood"),8).
annotation(a2, p3, 8) :- holdsAt(locationOf(p3,"red blood cell"),8).
annotation(a3, p3, 8) :- holdsAt(locationOf(p3,"blood"),8).
annotation(a4, p3, 8) :- holdsAt(locationOf(p3,"?"),8).
annotation(a5, p3, 8) :- holdsAt(locationOf(p3,"red blood cell"),8).
annotation(a1, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a2, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a3, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a4, p4, 8) :- holdsAt(locationOf(p4,"?"),8).
annotation(a5, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a1, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a2, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a3, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a4, p4, 8) :- holdsAt(locationOf(p4,"?"),8).
annotation(a5, p4, 8) :- holdsAt(locationOf(p4,"blood"),8).
annotation(a1, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a2, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a3, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a4, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a5, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a1, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a2, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a3, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a4, p5, 8) :- holdsAt(locationOf(p5,"?"),8).
annotation(a5, p5, 8) :- holdsAt(locationOf(p5,"body"),8).
annotation(a1, p1, 9) :- holdsAt(locationOf(p1,"lung"),9).
annotation(a2, p1, 9) :- holdsAt(locationOf(p1,"?"),9).
annotation(a3, p1, 9) :- holdsAt(locationOf(p1,"body"),9).
annotation(a4, p1, 9) :- holdsAt(locationOf(p1,"?"),9).
annotation(a5, p1, 9) :- holdsAt(locationOf(p1,"lung"),9).
annotation(a1, p2, 9) :- holdsAt(locationOf(p2,"hemoglobin"),9).
annotation(a2, p2, 9) :- holdsAt(locationOf(p2,"cell in the body"),9).
annotation(a3, p2, 9) :- holdsAt(locationOf(p2,"body"),9).
annotation(a4, p2, 9) :- holdsAt(locationOf(p2,"different cell in the body"),9).
annotation(a5, p2, 9) :- holdsAt(locationOf(p2,"body"),9).
annotation(a1, p3, 9) :- holdsAt(locationOf(p3,"blood"),9).
annotation(a2, p3, 9) :- holdsAt(locationOf(p3,"red blood cell"),9).
annotation(a3, p3, 9) :- holdsAt(locationOf(p3,"blood"),9).
annotation(a4, p3, 9) :- holdsAt(locationOf(p3,"?"),9).
annotation(a5, p3, 9) :- holdsAt(locationOf(p3,"red blood cell"),9).
annotation(a1, p4, 9) :- holdsAt(locationOf(p4,"blood"),9).
annotation(a2, p4, 9) :- holdsAt(locationOf(p4,"blood"),9).
annotation(a3, p4, 9) :- holdsAt(locationOf(p4,"blood"),9).
annotation(a4, p4, 9) :- holdsAt(locationOf(p4,"?"),9).
annotation(a5, p4, 9) :- holdsAt(locationOf(p4,"blood"),9).
annotation(a1, p5, 9) :- holdsAt(locationOf(p5,"body"),9).
annotation(a2, p5, 9) :- holdsAt(locationOf(p5,"body"),9).
annotation(a3, p5, 9) :- holdsAt(locationOf(p5,"body"),9).
annotation(a4, p5, 9) :- holdsAt(locationOf(p5,"?"),9).
annotation(a5, p5, 9) :- holdsAt(locationOf(p5,"body"),9).
refers(1,p1,"air").
refers(2,p1,"air").
refers(3,p2,"the oxygen").
refers(3,p1,"from the air").
refers(3,p1,"the air").
refers(4,p2,"the oxygen").
refers(4,p2,"oxygen").
refers(4,p3,"by hemoglobin").
refers(4,p3,"hemoglobin").
refers(5,p4,"red blood cells").
refers(5,p3,"hemoglobin").
refers(6,p5,"blood").
refers(6,p4,"a lot of red blood cells").
refers(7,p5,"the blood").
refers(8,p5,"blood").
refers(8,p2,"the oxygen").
:- p.
:-not holdsAt(locationOf(p1,"lung"),3).
:-not holdsAt(locationOf(p2,"hemoglobin"),5).

















:-not holdsAt(locationOf(p1,"body"),2).
















:-not holdsAt(locationOf(p2,"lung"),4).
:-not holdsAt(locationOf(p5,"body"),7).

:-not holdsAt(locationOf(p5,"body"),6).
:-not holdsAt(locationOf(p5,"body"),5).
:-not holdsAt(locationOf(p5,"body"),4).
:-not holdsAt(locationOf(p5,"body"),3).

:-not holdsAt(locationOf(p5,"body"),2).






:-not holdsAt(locationOf(p4,"blood"),2).

:-not holdsAt(locationOf(p4,"blood"),4).
:-not holdsAt(locationOf(p4,"blood"),3).
:-not holdsAt(locationOf(p4,"blood"),6).
:-not holdsAt(locationOf(p4,"blood"),5).
:-not holdsAt(locationOf(p4,"blood"),8).
:-not holdsAt(locationOf(p4,"blood"),7).

:-not holdsAt(locationOf(p5,"body"),8).

filename("377.sample").
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Input predicates:
% 1. time(1..n).
% 2. entity(1..m): the set of entities.
% 3. description(I,V) : string description of i-th entity  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% you observe the location at certain timepoints which are critical points
% for the points that are not critical points you decide the location based 
% on the neighbour critical points 

criticalPoint(E,T)	:- before(locationOf(E,L),T).
criticalPoint(E,T+1):- initiate(locationOf(E,L),T).
criticalPoint(E,T+1):- terminate(locationOf(E),T).
criticalPoint(E,T+1):- destroy(E,T).
criticalPoint(E,T+1):- create(E,T).

% assume the leftmost point is a critical point
criticalPoint(E,0)	:- entity(E).

% define non critical point
nonCriticalPoint(E,T):- entity(E), time(T), not criticalPoint(E,T).

% define the left endpoint of a non critical point
leftCriticalPoint(E,T,T1):- nonCriticalPoint(E,T), criticalPoint(E,T1), T1<T, not nleftCriticalPoint(E,T,T1).
nleftCriticalPoint(E,T,T1):- nonCriticalPoint(E,T), criticalPoint(E,T1), T1<T, criticalPoint(E,T2), T1<T2, T2<T.

% define the right endpoint of a entity at each point
rightCriticalPoint(E,T,T1):- entity(E), time(T), T1>T, before(locationOf(E,L),T1),
							not nRightCriticalPoint(E,T,T1).
nRightCriticalPoint(E,T,T1):- entity(E), time(T), before(locationOf(E,L),T1), T1>T, 
							 criticalPoint(E,T2), T1>T2, T2>T.
nRightCriticalPoint(E,T,T1):- entity(E), time(T), initiate(locationOf(E,L),T1-1), T1>T, time(T1).

% define has a right critical point
hasARightCriticalPoint(E,T):- rightCriticalPoint(E,T,T1).
hasNoRightCriticalPoint(E,T):- not hasARightCriticalPoint(E,T), entity(E), time(T). %, nonCriticalPoint(E,T)

% define first critical point is not created type 
firstCriticalPoint(E,T):- criticalPoint(E,T), time(T), not nFirstCriticalPoint(E,T).
nFirstCriticalPoint(E,T):- criticalPoint(E,T), criticalPoint(E,T1), T1<T, time(T1), time(T).
nUsedBeforeCreation(E):- firstCriticalPoint(E,T), create(E,T-1).
isUsedBeforeCreation(E):- entity(E), not nUsedBeforeCreation(E).
firstCriticalPointTypeBefore(E):- firstCriticalPoint(E,T), before(locationOf(E,L),T), not initiate(locationOf(E,L1),T-1):location(L1).

% initialization (we can do this better with checking if it has a before)
holdsAt(locationOf(E,"?"),0):- isUsedBeforeCreation(E), not firstCriticalPointTypeBefore(E).
holdsAt(locationOf(E,L),1):- isUsedBeforeCreation(E),firstCriticalPointTypeBefore(E),before(locationOf(E,L),T).
holdsAt(locationOf(E,"-"),0):- entity(E), not isUsedBeforeCreation(E).

% define location at critical point
holdsAt(locationOf(E,L),T):- criticalPoint(E,T), before(locationOf(E,L),T).
%what about does not exist?
holdsAt(locationOf(E,L),T):- criticalPoint(E,T), initiate(locationOf(E,L),T-1),  
                             not before(locationOf(E,L1),T):location(L1):L1!=L. 
holdsAt(locationOf(E,"-"),T):-criticalPoint(E,T), destroy(E,T-1), time(T-1).
holdsAt(locationOf(E,"?"),T):-criticalPoint(E,T), terminate(locationOf(E),T-1), time(T-1), time(T),
                              not initiate(locationOf(E,L),T-1):location(L), 
							  hasNoRightCriticalPoint(E,T-1).
holdsAt(locationOf(E,"?"),T):-criticalPoint(E,T), create(E,T-1), time(T-1), time(T),
							  not initiate(locationOf(E,L),T-1):location(L), hasNoRightCriticalPoint(E,T-1).
% fix this : the value when terminate || create followed by before
holdsAt(locationOf(E,L),T):-criticalPoint(E,T), terminate(locationOf(E),T-1), time(T-1),
                              not initiate(locationOf(E,L1),T-1):location(L1), 
							  rightCriticalPoint(E,T,T1), holdsAt(locationOf(E,L),T1).
holdsAt(locationOf(E,L),T):-criticalPoint(E,T), create(E,T-1), time(T-1),
							not initiate(locationOf(E,L1),T-1):location(L1), 
							rightCriticalPoint(E,T,T1), holdsAt(locationOf(E,L),T1).

% define propagation
% If the right critical point is not backward type
% propagate the value from left (i.e. also why left must exist)
holdsAt(locationOf(E,L),T+1):- nonCriticalPoint(E,T+1), hasNoRightCriticalPoint(E,T+1),
							   holdsAt(locationOf(E,L),T). 
							   
% If the right is backward type
     % if the left type is termination  || creation with no initiation Then propagate back
holdsAt(locationOf(E,L),T):- nonCriticalPoint(E,T), rightCriticalPoint(E,T,T1),holdsAt(locationOf(E,L),T1),leftCriticalPoint(E,T,T2), T2>0, create(E,T2-1), not initiate(locationOf(E,L1),T2-1):location(L1).

holdsAt(locationOf(E,L),T):- nonCriticalPoint(E,T), rightCriticalPoint(E,T,T1), holdsAt(locationOf(E,L),T1),leftCriticalPoint(E,T,T2), T2>0, terminate(locationOf(E),T2-1), not initiate(locationOf(E,L1),T2-1):location(L1).
 
% If the left has a known value then there are possibilities
% case 3: conflicting propagation
% base case (the point before the right critical can take any value of left/right)
holdsAt(locationOf(E,L),T-1):- nonCriticalPoint(E,T-1), rightCriticalPoint(E,T-1,T), holdsAt(locationOf(E,L),T),not holdsAt(locationOf(E,L1),T-1):location(L1):L1!=L.

holdsAt(locationOf(E,L),T-1):- nonCriticalPoint(E,T-1), rightCriticalPoint(E,T-1,T), holdsAt(locationOf(E,L),T1), not holdsAt(locationOf(E,L1),T-1):location(L1):L1!=L, leftCriticalPoint(E,T-1,T1).

% if V_t+1 = V_r if V_t \in {V_l, V_r}
% if V_t+1 = V_l then V_t = V_l
holdsAt(locationOf(E,L),T):- nonCriticalPoint(E,T), rightCriticalPoint(E,T,T1), T<T1-1,  holdsAt(locationOf(E,L),T+1), holdsAt(locationOf(E,L),T1), not holdsAt(locationOf(E,L1),T):location(L1):L1!=L.
holdsAt(locationOf(E,L),T):- nonCriticalPoint(E,T), rightCriticalPoint(E,T,T1), T<T1-1, leftCriticalPoint(E,T,T2), holdsAt(locationOf(E,L),T2), not holdsAt(locationOf(E,L1),T):location(L1):L1!=L.

%%%% constraints %%%%%
:- initiate(locationOf(E,L),T), destroy(E,T), time(T), entity(E).
:- before(locationOf(E,L),T+1), destroy(E,T), time(T), entity(E).



time(T):-observedAt(V,Q,A,T).
time(T+1):-observedAt(V,Q,A,T).

entity(E):-participant(E).
location(L):-lvalue(P,L).
location("?").
location("-").
answer(L):-observedAt(V,Q,L,T).
event(V):-observedAt(V,Q,L,T).
question(Q):-observedAt(V,Q,L,T).
groundObservation(V,Q,L,T):-observedAt(V,Q,L,T).
entityObservation(V,Q,L,T):-observedAt(V,Q,L,T), refers(T,P,L).

name(X):-description(N,X).
value(L,L):-location(L).
value(L,L):-answer(L).

%% observedAt
eobservedAt(V,Q,P,T):-observedAt(V,Q,L,T), refers(T,P,L).
lobservedAt(V,Q,L,T):-observedAt(V,Q,P,T), lvalue(P,L).
%elObservedAt(V,Q1,P,Q2,L):-eobservedAt(V,Q1,P,T),lobservedAt(V,Q2,L,T).
%examples
hasCorrectPrediction(X,T):- annotation(A,X,T), 1 {holdsAt(locationOf(X,L),T)} 1.
nHasCorrectPrediction(X,T):- not hasCorrectPrediction(X,T), time(T),participant(X).
bad(X):-nHasCorrectPrediction(X,T).
p:- bad(X).

%restriction on abduction

:-abduced_before(locationOf(E,L),T),L="?".
:-abduced_before(locationOf(E,L),T),L="-".
:-abduced_initiate(locationOf(E,L),T),L="?".
:-abduced_initiate(locationOf(E,L),T),L="?".
special(L):- location(L),  not lvalue(X,L):answer(X).
:- abduced_before(locationOf(E,L),T), not lobservedAt(V,Q,L,T):question(Q):event(V), not special(L),T!=1.


%colocation
%%cosituation(E,P,T):- create(E,T), eobservedAt(V,Q,P,T), E!=P, not create(P,T),exists(P,T).
cosituation(E,P,T):- create(E,T), mayDestroy(P,T), eobservedAt(V,Q,P,T), E!=P, 
not create(P,T),holdsAt(locationOf(P,L),T),L!="-".
colocation_helper(E,L,T):- holdsAt(locationOf(P,L),T),cosituation(E,P,T), not destroy(E1,T):entity(E1).
colocation(E,L,T):- colocation_helper(E,L,T), L!="?".%not colocation_helper(E,L1,T):location(L1):L1!=L.
%colocation_helper(E,L,T):-create(E,T), destroy(E1,T), holdsAt(locationOf(E1,L),T).
%:- colocation_helper(E,L,T),colocation_helper(E,L1,T),L!=L1.

initiate(locationOf(V1,V2),V3):-colocation(V1,V2,V3), not initiate(locationOf(V1,L),V3):answer(L):L!=V2.



transformation(E,V1,P,V2,T):-exists(P,T), mayDestroy(P,T), create(E,T), description(E,V1),description(P,V2).
%exception to destroy
hasAppearedAfter(E,T):-eobservedAt(V,Q,E,T1),time(T), time(T1), T<T1, participant(E).
hasBeenReferredAfter(E,T):-eobservedAt(V,Q,E,T1),time(T), time(T1), T=T1-2..T1-1, participant(E).
destroy(E,T):-exists(E,T),mayDestroy(E,T), not hasBeenUsedAfter(E,T),not exception(E,T), not undestroyble(E,T).%, .
hasBeenUsedAfter(E,T):-hasBeenReferredAfter(E,T), not ab(E).

%:-ab_exception(E,T), C=#count {transformation(P,V1,E,V2,T):participant(P)}, C<1.

%attached
attached(E,P,T):- holdsAt(locationOf(E,P),T), P!=E, participant(P), participant(E).
initiate(locationOf(E,L),T):- initiate(locationOf(P,L),T),attached(E,P,T).
destroy(E,T):- destroy(P,T),attached(E,P,T).

%participant(dummy;dummy2).
doesNotexists(dummy,T):-time(T).
exists(dummy2,T):-time(T).
:- create(dummy,T), time(T).
:-destroy(dummy2,T), time(T).
:- mayDestroy(dummy,T), time(T).
:- ab(dummy).

somethingGotCreated(T):-create(E,T), participant(E).

%destroyedButNotCreatedYet(E,T):- destroy(E,T1),T1<T,time(T1), time(T), not create(E,T2):time(T2):T2<=T:T2>T1. 

:- initiate(locationOf(E,"?"),T).
:- initiate(locationOf(E,"-"),T).
:- before(locationOf(E,L),T), before(locationOf(E,L1),T), L!=L1. 
:- initiate(locationOf(E,L),T), initiate(locationOf(E,L1),T), L!=L1. 

appears(T,E,L):- lobservedAt(V,Q,L,T), eobservedAt(V1,Q1,E,T).
bad_abductive(E,T):-appears(T,E,L), abduced_before(locationOf(E,L),T1),T1!=T.
bad_abductive(E,T):-appears(T,E,L), abduced_initiate(locationOf(E,L),T1),T1!=T.
#minimize [bad_abductive(E,T)=5@1:entity(E):time(T)].

before(locationOf(V1,V2),V3):-lobservedAt("have","what v something ?",V2,V3),eobservedAt("have","what does something v ?",V1,V3),entity(V1),location(V2),time(V3).
before(locationOf(V1,V2),V3):-lobservedAt("absorb","what v something ?",V2,V3),eobservedAt("absorb","what does something v something from ?",V1,V3),entity(V1),location(V2),time(V3).

before(locationOf(V1,V2),V3):-lobservedAt("bring","where can something v something ?",V2,V3),eobservedAt("bring","what can something v ?",V1,V3),entity(V1),location(V2),time(V3).
initiate(locationOf(V1,V2),V3):-eobservedAt("transport","what is v ?",V1,V3),lobservedAt("transport","what is something v by ?",V2,V3),entity(V1),location(V2),time(V3).
initiate(locationOf(V1,V2),V3):-lobservedAt("reach","what does something v ?",V2,V3),description(V1,"oxygen"),entity(V1),location(V2),time(V3).
initiate(locationOf(V1,V2),V3):-eobservedAt("suck","what does something v up ?",V1,V3),value(V2,"root"),entity(V1),location(V2),time(V3).
before(locationOf(V1,V2),V3):-description(V1,"hemoglobin"),lobservedAt("move","what does something v ?",V2,V3),entity(V1),location(V2),time(V3).
initiate(locationOf(V1,V2),V3):-eobservedAt("travel","what v into something ?",V1,V3),lobservedAt("travel","what does something v into ?",V2,V3),entity(V1),location(V2),time(V3).
before(locationOf(V1,V2),V3):-lobservedAt("bring","where can something v something ?",V2,V3),eobservedAt("bring","what can v something ?",V1,V3),entity(V1),location(V2),time(V3).
