{OmniDelay.ar(Impulse.ar(1), 0.01, 0.9).dup}.play

{OmniDelay2.ar(Impulse.ar(1), 0.01, 0.98, 0.8, 1).dup}.play

{OmniDelay3.ar(Impulse.ar(1), 0.01, 0.98, 0.8, 1).dup}.play

(
~dts = Buffer.alloc(s, 4);
~fbs = Buffer.alloc(s, 4);
~dps = Buffer.alloc(s, 4);
~vls = Buffer.alloc(s, 4);
)

{OmniDelay4.ar(Pulse.ar(MouseX.kr(1, 100)), ~dts, ~fbs, ~dps, ~vls, 1.0).tanh.dup}.play

{OmniDelay5.ar(Saw.ar(LFNoise1.kr(0.1).range(1, 20)), ~dts, ~fbs, ~dps, ~vls, 1.0).tanh.dup}.play

(
4.do({ | i |
	~dts.set(i, rrand(0.0001, 0.01));
	~fbs.set(i, rrand(0.9, 0.95));
	~dps.set(i, rrand(0.5, 0.9));
	~vls.set(i, rrand(0.85, 1.0));
});
)
