(
play{SinOsc.ar(OnePole.ar(Mix(
LFSaw.ar([1,0.99],[0,0.5],300,300).trunc([5,10])*[1,-1]
),0.98)).dup*0.1}
)

(
play{SinOsc.ar(OnePole.ar(Mix(
LFSaw.ar([1,0.9],[0,0.5],300,300).trunc([5,10])*[1,-1]
),0.98)).dup*0.1}
)


(
play{SinOsc.ar(OnePole.ar(Mix(
LFSaw.ar([1,0.2],[0,0.7],300,300).trunc([5,10])*[1,-1]
),0.98)).dup*0.1}
)

(
play{SinOsc.ar(OnePole.ar(Mix(
LFSaw.ar([1,0.2],[0.1,0.7],350,150).trunc([5,10])*[1,-1]
),0.2)).dup*0.3}
) 
