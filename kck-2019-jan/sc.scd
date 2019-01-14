(
var tracks;
SuperDirt.postBadValues = false;
// tracks = "~/studio/tidal-samples/tracks/";

// format("%shared", tracks);

s.options.device_("JackRouter");
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;
s.waitForBoot {
	~dirt = SuperDirt(2, s);
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/a-code/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/bit-dust/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/blue-code/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/blutcha/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/c-code/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/d-code/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/it-me/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/mesabi/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/mons1/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/rebellion/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/shared/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/this-cant-be-it/*");
	s.sync;
	~dirt.start(57120, [0, 0]);

	MIDIClient.init;
    ~midiOut = MIDIOut.newByName("Scarlett 2i4 USB", "Scarlett 2i4 USB");
    ~midiOut.latency = 0;
    ~dirt.soundLibrary.addMIDI(\midi, ~midiOut);


};
s.latency = 0.0;
);


~dirt.loadSoundFiles("~/studio/tidal-samples/tracks/blutcha/*");



(
MIDIClient.init;
~midiOut = MIDIOut.newByName("Scarlett 2i4 USB", "Scarlett 2i4 USB");
~midiOut.latency = 0;
~dirt.soundLibrary.addMIDI(\midi, ~midiOut);
)
