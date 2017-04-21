(
s.options.numBuffers = 1024 * 16; // increase this if you need to load more samples
s.options.memSize = 8192 * 16; // increase this if you get "alloc failed" messages
s.options.maxNodes = 1024 * 32; // increase this if you are getting drop outs and the message "too many nodes"
s.options.numOutputBusChannels = 2; // set this to your hardware output channel size, if necessary
//s.options.numInputBusChannels = 2; // set this to your hardware input channel size, if necessary
// boot the server and start SuperDirt
s.waitForBoot {
    ~dirt = SuperDirt(2, s);
	//~dirt.loadSoundFiles("C:\\tidal-samples\\live-2016\\*");
    s.sync;
    ~dirt.start(57120, [0, 0]);
}
)



~dirt.loadSoundFiles("C:\\tidal-samples\\live-2016\\*");





~dirt.loadSoundFiles("C:\\Users\\kindohm\\AppData\\Local\\SuperCollider\\downloaded-quarks\\Dirt-Samples\\*");

~dirt.loadSoundFiles("C:\\tidal-samples\\iclc1\\samples\\*");



~dirt.loadSoundFiles("C:\\tidal-samples\\stereo\\*");

~dirt.loadSoundFiles("C:\\tidal-samples\\ambient\\*");


// dec-era
~dirt.loadSoundFiles("C:\\studio-bones\\dec-era\\samples\\*");

~dirt.loadSoundFiles("C:\\Users\\kindohm\\code\\Dirt-Samples\\*");
