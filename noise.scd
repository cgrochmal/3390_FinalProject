(
{
	var q = 0.2 * BrownNoise.ar(1 + SinOsc.kr(1 + SinOsc.kr(0.005, 0, 70), 0, 1));
	[q, q];
}.play;)

Saw.ar




({
	var noise = BrownNoise(0.25)*EnvGen.kr(Env.perc(3, 100), doneAction:2);
	var bass = (BrownNoise.kr(1)+ SinOsc.ar(55, 0,  0.5 ) + SinOsc.ar(110, 0,  0.5 ))* EnvGen.kr(Env.perc(0.01, 0.5), doneAction: 2);




	Mix([[ bass , bass]])
}.play;)


(
{
	var env = LFPulse.kr(5.55, 0, 0.15);
	[GrayNoise.ar(env), GrayNoise.ar(env)];
}.play
)



({
	var bass = BrownNoise.ar(0.5)* EnvGen.kr(Env.perc(0.02, 1), doneAction: 2);
	}.play)




({[PinkNoise.ar(1), PinkNoise.ar(1)]}.play;)



//amplitude goes from 0 to 4 to 0 every second
{2 + SinOsc.ar(1, 3pi/2, 2)}.plot(1);



(
{
	LFPulse.kr(2 + SinOsc.ar(0.5, 3pi/2, 2), 0, 0.5, 1);
}.plot(5)

)
(
{

	var amp = SinOsc.kr(0.5, 0, 0.5);
	var a = SinOsc.ar(56, 0, 0.5 ) + SinOsc.ar(55, 0, 0.5) + Blip.ar(54, 5, 0.2 );
	var b = SinOsc.ar(56, 0, 0.5 + amp) + SinOsc.ar(55, 0, 0.5 + amp) + Blip.ar(54, 5, 0.2 + amp);
	[ b,a ]


}.play;
)



(
{
	BrownNoise.ar(1 + SinOsc.kr(1 + SinOsc.kr(0.005, 0, 70), 0, 1))

}.play;)

(
{
	[SinOsc.ar(0.05 + SinOsc.kr(0.5, 0, 55), 0, 1) ,SinOsc.ar(0.05 + SinOsc.kr(0.5, 0, 55), 0, 1) ]

}.play;) 