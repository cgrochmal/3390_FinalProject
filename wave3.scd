(
{
    var a, b, c, d;
    a = [SinOsc.ar(240, 0, 0.3), Saw.ar(444, 0.3)];
    b = [SinOsc.ar(242, 0, 0.4), Saw.ar(446, 0.4)];
	c = Pan2.ar(PinkNoise.ar(0.1), SinOsc.kr(0.5));


	d = Mix([a , c]);
	 Mix([d, b]).postln;

}.play;
)
