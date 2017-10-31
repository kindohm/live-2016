{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_rytmera_midi (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,0,5] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\kindohm\\AppData\\Roaming\\cabal\\bin"
libdir     = "C:\\Users\\kindohm\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-8.2.1\\rytmera-midi-0.0.5-qWkCqEO513KMTgP0gaErU"
dynlibdir  = "C:\\Users\\kindohm\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-8.2.1"
datadir    = "C:\\Users\\kindohm\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-8.2.1\\rytmera-midi-0.0.5"
libexecdir = "C:\\Users\\kindohm\\AppData\\Roaming\\cabal\\rytmera-midi-0.0.5-qWkCqEO513KMTgP0gaErU\\x86_64-windows-ghc-8.2.1\\rytmera-midi-0.0.5"
sysconfdir = "C:\\Users\\kindohm\\AppData\\Roaming\\cabal\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "rytmera_midi_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "rytmera_midi_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "rytmera_midi_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "rytmera_midi_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "rytmera_midi_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "rytmera_midi_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
