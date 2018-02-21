module Rytmera.Rytm where
    
    import Sound.Tidal.Params
    import Sound.Tidal.MIDI.Control
    
    (perf1, perf1_p) = pF "perf1" (Just 0)
    (perf2, perf2_p) = pF "perf2" (Just 0)
    (perf3, perf3_p) = pF "perf3" (Just 0)
    (perf4, perf4_p) = pF "perf4" (Just 0)
    (perf5, perf5_p) = pF "perf5" (Just 0)
    (perf6, perf6_p) = pF "perf6" (Just 0)
    (perf7, perf7_p) = pF "perf7" (Just 0)
    (perf8, perf8_p) = pF "perf8" (Just 0)
    (perf9, perf9_p) = pF "perf9" (Just 0)
    (perf10, perf10_p) = pF "perf10" (Just 0)
    (perf11, perf11_p) = pF "perf11" (Just 0)
    (perf12, perf12_p) = pF "perf12" (Just 0)
    (scene1, scene1_p) = pF "scene1" (Just 0)
    
    
    rytmController :: ControllerShape
    rytmController = ControllerShape { controls = [
                                mCC perf1_p 35,
                                mCC perf2_p 36,
                                mCC perf3_p 37,
                                mCC perf4_p 38,
                                mCC perf5_p 39,
                                mCC perf6_p 40,
                                mCC perf7_p 41,
                                mCC perf8_p 42,
                                mCC perf9_p 43,
                                mCC perf10_p 44,
                                mCC perf11_p 45,
                                mCC perf12_p 46,
                                mCC scene1_p 92
                              ],
                             latency = 0.1
                           }
    
    rytm = toShape rytmController
    