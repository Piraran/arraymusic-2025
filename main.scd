(
var path = thisProcess.nowExecutingPath.dirname;
var env = (path ++ "/env.scd").load; // define ~orbits y ~piraranSamplesPath

Server.default.options.numOutputBusChannels = 28;
Server.default.options.sampleRate = 48000;
Server.default.options.memSize= 512000*20;
Server.default.options.maxNodes=128*1024;
Server.default.options.numWireBufs= 512;
s.options.numBuffers = 1024 * 16;

s.waitForBoot {
	~dirt = SuperDirt(2, s);
	~dirt.loadSoundFiles;
	[
		"/maracas/",
		"/maracasf/",
		"/maracasp/",
		"/maracasExp/",
		"/maracasd/",
		"/maracasAcc/",
		"/maraDrums/",
		"/ruletero/",
		"kicks",
		"hats",
		"snares"
	].do({|sampleFolderPath|
		~dirt.loadSoundFiles((~piraranSamplesPath+/+sampleFolderPath).postln);
	});
	~dirt.start(57120, ~orbits);
	AKWFSuperDirt.init(s);
};
s.meter;
s.latency = 0.3;
);

(// test
Synth(\aguitar);
)
