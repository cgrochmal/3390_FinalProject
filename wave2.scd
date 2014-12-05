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
LFSaw.ar([0.08,0],[0,0.1],440,55).trunc([5,10])*[1,-1]
),0.98)).dup*0.2}
)

(
play{SinOsc.ar(OnePole.ar(Mix(
LFSaw.ar([1, 1],[0.1,1, 0.1],440,110).trunc([5,10])*[1,-1]
),0.2)).dup*0.3}
)
