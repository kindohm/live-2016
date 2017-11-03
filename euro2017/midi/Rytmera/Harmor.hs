module Rytmera.Harmor where
    
    import Sound.Tidal.Params
    import Sound.Tidal.MIDI.Control
   
    (x, x_p) = pF "x" (Just 0.5)
    (y, y_p) = pF "y" (Just 0.5)
    (z, z_p) = pF "z" (Just 0.5)    
    (top, top_p) = pF "top" (Just 1)
    (bottom, bottom_p) = pF "bottom" (Just 0)
    
    harmorController :: ControllerShape
    harmorController = ControllerShape { controls = [
                                mCC x_p 100,
                                mCC y_p 101,
                                mCC z_p 102,
                                mCC top_p 103,
                                mCC bottom_p 104
                                ],
                             latency = 0.1
                           }
    
    harmor = toShape harmorController


    