(
var tracks;
SuperDirt.postBadValues = false;

s.options.device_("JackRouter");
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 6;

s.waitForBoot {
	~dirt = SuperDirt(2, s);

	~dirt.loadSoundFiles("~/studio/tidal-samples/new-breed/*");
	~dirt.loadSoundFiles("~/studio/tidal-samples/mostlywavs/*");

	s.sync;
	~dirt.start(57120, [0, 2, 4]);


	MIDIClient.init;
    ~midiOut = MIDIOut.newByName("Scarlett 2i4 USB", "Scarlett 2i4 USB");
    ~midiOut.latency = 0;
    ~dirt.soundLibrary.addMIDI(\midi, ~midiOut);


};
s.latency = 0.0;
);

