({SinGrain.ar(1) * Saw.kr(440)}.play)


{ SinOsc.ar(LFTri.kr(4, 0, 55, 110), LFTri.kr(4, 0, 200, 400), 0.7) }.play
{  Saw.ar(LFTri.kr(1, 0, 110, 440), 0.7) }.play





(
SynthDef(\test, { |freq = 440, amp = 0.2, sustain = 1, attack = 0.01|
    var sig;
	    sig = (Blip.ar(freq - 2, 500, amp*0.4) + SinOsc.ar(freq, 0, amp) + Saw.ar(freq + 2, amp* 1.5))*EnvGen.kr(Env.perc(attack, sustain), doneAction: 2);
    Out.ar(0, sig ! 2);    // sig ! 2 is the same as [sig, sig]
}).add;
)


(
t = Task({
	var attack = 0.01;
	var amp = 0.2;
	var counter = 0;

    loop {

        [57, 59, 60, 62, 64, 65, 67, 69].do({ |midi|
            Synth(\test, [freq: midi.midicps, amp: amp, sustain: 0.1, attack: attack]);
            0.18.wait
        });

		counter = counter + 1;

		if ( attack < 0.2 ,				// Boolean expression (chooses one at random)
			{ attack = attack*1.5; },	// true function
			{ attack = attack + 0.1; }	// false function
		);

		if ( counter > 5 ,				// Boolean expression (chooses one at random)
			{ amp = amp * 0.95; },	// true function
			{  }	// false function
		)



    }
}).play;
)


(
t = Task({
	var attack = 0.01;
	var counter = 0;
	var amp = 0.2;

    loop {

        [57, 59, 60, 62, 64, 65, 67, 69].do({ |midi|
            Synth(\test, [freq: midi.midicps, amp: amp, sustain: 0.1, attack: attack]);
            0.18.wait
        });

		[57, 59, 60, 62, 64, 65, 67, 69].do({ |midi|
            Synth(\test, [freq: midi.midicps, amp: amp, sustain: 0.1, attack: attack]);
            0.09.wait
        });

		[57, 59, 60, 62, 64, 65, 67, 69].do({ |midi|
            Synth(\test, [freq: midi.midicps, amp: amp, sustain: 0.1, attack: attack]);
            0.09.wait


		});

		counter = counter + 1;
		if ( counter > 7 ,				// Boolean expression (chooses one at random)
			{ amp = amp * 0.75;
			amp.postln;},	// true function
			{  }	// false function
		)

    }
}).play;
)  