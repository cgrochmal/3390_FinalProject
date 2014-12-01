

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


