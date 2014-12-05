(
{
	var q = 0.2 * BrownNoise.ar(1 + SinOsc.kr(1 + SinOsc.kr(0.005, 0, 70), 0, 1));
	[q, q];
}.play;)


({
	var env = SinOsc.kr(0.5,0, 0.5,0);
	var bass = SinOsc.ar(55, 0,  env*2 );



	Mix([[bass, bass]])
}.play;)

({[PinkNoise.ar(1), PinkNoise.ar(1)]}.play;)



//amplitude goes from 0 to 4 every second
{2 + SinOsc.ar(1, 3pi/2, 2)}.plot(1);



(
{
	LFPulse.kr(2 + SinOsc.ar(0.5, 3pi/2, 2), 0, 0.5, 1);
}.plot(5)

)


(
{
	BrownNoise.ar(1 + SinOsc.kr(1 + SinOsc.kr(0.005, 0, 70), 0, 1))

}.play;)

(
{
	SinOsc.ar(.05 + SinOsc.kr(2, 0, 100), 0, 1)

}.play(1);)