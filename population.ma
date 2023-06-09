[top]
components : Pop
[Pop]
type : cell
dim : (9,18,3)
delay : INERTIAL
defaultDelayTime : 20
border : nowrapped
initialvalue : 0
initialCellsValue : Pop_input.val
localtransition : PopRule
zone : Source { (1,1,0)..(8,17,0) }
zone : PopRule { (1,1,2)..(8,17,2) }
% neighbors in city layer
neighbors : Pop(-2,0,-1) Pop(-1,0,-1) Pop(0,0,-1)
neighbors : Pop(-2,-1,-1) Pop(-1,-1,-1) 
neighbors : Pop(-2,-2,-1) Pop(-1,-2,-1) 
neighbors : Pob(-2,1,-1) Pob(-1,1,-1) 
neighbors : Pob(-2,2,-1) Pob(-1,2,-1)  
neighbors : Pop(2,0,-1) Pop(1,0,-1) 
neighbors : Pop(2,-1,-1) Pop(1,-1,-1) 
neighbors : Pop(2,-2,-1) Pop(1,-2,-1) 
neighbors : Pop(2,1,-1) Pop(1,1,-1) 
neighbors : Pop(2,2,-1) Pop(1,2,-1) 
neighbors : Pop(0,1,-1) Pop(0,2,-1) 
neighbors : Pop(0,-1,-1) Pop(0,-2,-1) 

neighbors : Pop(-2,0,1) Pop(-1,0,1) Pop(0,0,1)
neighbors : Pop(-2,-1,1) Pop(-1,-1,1) 
neighbors : Pop(-2,-2,1) Pop(-1,-2,1) 
neighbors : Pob(-2,1,1) Pob(-1,1,1) 
neighbors : Pob(-2,2,1) Pob(-1,2,1)  
neighbors : Pop(2,0,1) Pop(1,0,1) 
neighbors : Pop(2,-1,1) Pop(1,-1,1) 
neighbors : Pop(2,-2,1) Pop(1,-2,1) 
neighbors : Pop(2,1,1) Pop(1,1,1) 
neighbors : Pop(2,2,1) Pop(1,2,1) 
neighbors : Pop(0,1,1) Pop(0,2,1) 
neighbors : Pop(0,-1,1) Pop(0,-2,1) 

neighbors : Pop(0,0,-2)
neighbors : Pop(-1,0,0) Pop(-1,1,0) Pop(-1,-1,0) Pop(0,1,0) Pop(0,-1,0) Pop(1,0,0) Pop(1,1,0) Pop(1,-1,0) Pop(0,0,0)

[Source]
%movement rules for people
rule : 1 1000 {(0,0,0)=0 and (((-1,0,0)=1 or (-1,1,0)=1 or (-1,-1,0)=1 or (0,1,0)=1 or (0,-1,0)=1 or (1,0,0)=1
or (1,1,0)=1 or (1,-1,0)=1) and ((-2,0,1)=2 or (-1,0,1)=2 or (0,0,1)=2 or (-2,-1,1)=2 or(-1,-1,1)=2 
or (-2,-2,1)=2 or (-1,-2,1)=2 or (-2,1,1)=2 or (-1,1,1)=2 or (-2,2,1)=2 or (-1,2,1)=2 or (2,0,1)=2 
or (1,0,1)=2 or (2,-1,1)=2 or (1,-1,1)=2 or (2,-2,1)=2 or (1,-2,1)=2 or (2,1,1)=2 or (1,1,1)=2 
or (2,2,1)=2 or (1,2,1)=2 or(0,1,1)=2 or(0,2,1)=2 or (0,-1,1)=2 or(0,-2,1)=2))}

rule : 1 1000 {(0,0,0)=0 and (((-1,0,0)=1 or (-1,1,0)=1 or (-1,-1,0)=1 or (0,1,0)=1 or (0,-1,0)=1 or (1,0,0)=1
or (1,1,0)=1 or (1,-1,0)=1) and ((-1,0,1)= 3 or (0,0,1)= 3 or (-1,-1,1)= 3 or (-1,1,1)= 3 or (1,0,1)= 3 
or (1,-1,1)= 3 or (1,1,1)= 3 or(0,1,1)= 3 or (0,-1,1)= 3))}

rule : {(0,0,0)} 100 {t}

[PopRule]
%movement rules for people 
rule : 1 1000 {(0,0,0)=0 and ((0,0,-2)>= 1)}

rule : 2 1000 {(0,0,0)>=0 and ((-2,0,-1)= 2 or (-1,0,-1)= 2 or (0,0,-1)= 2 or (-2,-1,-1)= 2 or(-1,-1,-1)= 2 
or (-2,-2,-1)= 2 or (-1,-2,-1)= 2 or (-2,1,-1)= 2 or (-1,1,-1)= 2 or (-2,2,-1)= 2 or (-1,2,-1)= 2 or (2,0,-1)= 2 
or (1,0,-1)= 2 or (2,-1,-1)= 2 or (1,-1,-1)= 2 or (2,-2,-1)= 2 or (1,-2,-1)= 2 or (2,1,-1)= 2 or (1,1,-1)= 2 
or (2,2,-1)= 2 or (1,2,-1)= 2 or(0,1,-1)= 2 or(0,2,-1)= 2 or (0,-1,-1)= 2 or(0,-2,-1)= 2)}

rule : 3 1000 {(0,0,0)>=0 and ((-1,0,-1)= 3 or (0,0,-1)= 3 or (-1,-1,-1)= 3 or (-1,1,-1)= 3 or (1,0,-1)= 3 
or (1,-1,-1)= 3 or (1,1,-1)= 3 or(0,1,-1)= 3 or (0,-1,-1)= 3)}

rule : {(0,0,0)} 100 {t}

