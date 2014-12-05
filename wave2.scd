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


( SynthDef(\kick, {

    var subosc, subenv, suboutput, clickosc, clickenv, clickoutput;

    subosc = {SinOsc.ar(60)};
    subenv = {Line.ar(1, 0, 1, doneAction: 2)};

    clickosc = {LPF.ar(WhiteNoise.ar(1),1500)};
    clickenv = {Line.ar(1, 0, 0.02)};

    suboutput = (subosc * subenv);
    clickoutput = (clickosc * clickenv);

    Out.ar(0,
        Pan2.ar(suboutput + clickoutput, 0)
    )

}).add;
)
