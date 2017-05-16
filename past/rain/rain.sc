(
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;
s.waitForBoot {
    ~dirt = SuperDirt(2, s);
    s.sync;
    ~dirt.start(57120, [0, 0]);
}
)


~dirt.loadSoundFiles("C:\\tidal-samples\\reich\\*");

