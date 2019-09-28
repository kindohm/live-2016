(
var tracks;
SuperDirt.postBadValues = false;
// tracks = "~/studio/tidal-samples/tracks/";

// format("%shared", tracks);

// s.options.device_("JackRouter");

// s.options.numInputBusChannels = 0;

s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;

//s.options.numOutputBusChannels = 8;

s.waitForBoot {
	~dirt = SuperDirt(2, s);

	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/a-code/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/bit-dust/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/blue-code/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/blutcha/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/c-code/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/d-code/*");
	// //~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/info/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/it-me/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/lime/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/mesabi/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/reich/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/rebellion/*");
	// // ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/sleep/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/risc-chip/*");
	// ~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/shared/*");
	// //~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/this-cant-be-it/*");

	// ~dirt.loadSoundFiles("~/studio/tidal-samples/repeatable/*");


	s.sync;
	~dirt.start(57120, [0, 0]);
	//~dirt.start(57120, [0, 2, 4, 6]);

	MIDIClient.init;
    ~midiOut = MIDIOut.newByName("Scarlett 18i8 USB", "Scarlett 18i8 USB";
    ~midiOut.latency = 0;
    ~dirt.soundLibrary.addMIDI(\rytm, ~midiOut);


};
s.latency = 0.0;
);





(
MIDIClient.init;
~midiOut = MIDIOut.newByName("Scarlett 2i4 USB", "Scarlett 2i4 USB");
~midiOut.latency = 0;
~dirt.soundLibrary.addMIDI(\midi, ~midiOut);
)

	