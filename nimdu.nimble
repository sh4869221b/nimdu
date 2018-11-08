import ospaths
template thisModuleFile: string = instantiationInfo(fullPaths = true).filename

when fileExists(thisModuleFile.parentDir / "src/nimdupkg/common.nim"):
  # In the git repository the Nimble sources are in a ``src`` directory.
  import src/nimdupkg/common
else:
  # When the package is installed, the ``src`` directory disappears.
  import nimdupkg/common

# Package

version       = nimduVersion
author        = "sh4869221"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
binDir        = "bin"
bin           = @["nimdu"]
installExt    = @["nim"]

# Dependencies

requires "nim >= 0.18.0"
requires "docopt >= 0.6.6"
