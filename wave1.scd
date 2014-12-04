{ Ringz.ar(Dust.ar(2, 0.2), 220, 2) + Ringz.ar(Dust.ar(2, 0.2), 440, 2) }.play

{ Klank.ar(`[[110, 220, 440, 880], nil, [1, 2, 4, 8]], Impulse.ar(2, 0, 0.05)) }.play;

{ Klank.ar(`[[55, 110, 220, 440, 880], nil, [1, 2, 4, 8]], Impulse.ar(2, 0, 0.05)) }.play;


(
{
    var a, b, c, d;
    a = [SinOsc.ar(440, 0, 0.2), Saw.ar(662, 0.2)];
    b = [SinOsc.ar(442, 0, 0.2), Saw.ar(660, 0.2)];
	c = Pan2.ar(PinkNoise.ar(0.2), SinOsc.kr(0.5));


	d = Mix([a , c]);
	 Mix([d, b]).postln;

}.play;
)



(
{
    var a, b, c, d;
    a = [SinOsc.ar(440, 0, 0.1), Saw.ar(662, 0.1)];
    b = [SinOsc.ar(442, 0, 0.1), Saw.ar(660, 0.1)];
	c = Resonz.ar(Pan2.ar(Ringz.ar(Dust.ar(3, 0.3), 440, 2), Saw.ar(662, 0.1)));

	d = Mix([a , c]);
	 Mix([d, b]).postln;

}.play;
)



