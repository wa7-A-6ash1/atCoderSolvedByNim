# Package

version       = "0.1.0"
author        = "wa7-A-6ash1"
description   = "A new awesome nimble package"
license       = "MIT"

srcDir        = "src"
binDir        = "bin"
bin           = @[ "ABC049_C" ]
skipDirs      = @[ "tests", "util" ]
backend       = "c"

# Dependencies

requires "nim >= 1.6.8"
