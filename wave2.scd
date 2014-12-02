
play{SinOsc.ar(OnePole.ar(Mix(
LFSaw.ar([1,0.99],[0,0.5],3000,3000).trunc([400,600])*[1,-1]
),0.98)).dup*0.1}
