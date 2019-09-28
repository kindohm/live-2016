:set -XOverloadedStrings
:set prompt ""
:module Sound.Tidal.Context

(cps, nudger, getNow) <- cpsUtils'

import Sound.Tidal.Context

(d1,t1) <- superDirtSetters getNow
(d2,t2) <- superDirtSetters getNow
(d3,t3) <- superDirtSetters getNow
(d4,t4) <- superDirtSetters getNow
(d5,t5) <- superDirtSetters getNow
(d6,t6) <- superDirtSetters getNow
(d7,t7) <- superDirtSetters getNow
(d8,t8) <- superDirtSetters getNow
(d9,t9) <- superDirtSetters getNow

(midicmd, midicmd_p) = pS "midicmd" (Nothing)
(midichan, midichan_p) = pF "midichan" (Nothing)
(progNum, progNum_p) = pF "progNum" (Nothing)
(val, val_p) = pF "val" (Nothing)
(uid, uid_p) = pF "uid" (Nothing)
(array, array_p) = pF "array" (Nothing)
(frames, frames_p) = pF "frames" (Nothing)
(seconds, seconds_p) = pF "seconds" (Nothing)
(minutes, minutes_p) = pF "minutes" (Nothing)
(hours, hours_p) = pF "hours" (Nothing)
(frameRate, frameRate_p) = pF "frameRate" (Nothing)
(songPtr, songPtr_p) = pF "songPtr" (Nothing)
(ctlNum, ctlNum_p) = pF "ctlNum" (Nothing)
(control, control_p) = pF "control" (Nothing)
(ccn, ccn_p) = pI "control" (Nothing)
(ccv, ccv_p) = pI "control" (Nothing)

let bps x = cps (x/2)
let bpm x = bps (x/120)
let hush = mapM_ ($ silence) [d1,d2,d3,d4,d5,d6,d7,d8,d9]
let solo = (>>) hush

:set prompt "tidal> "
