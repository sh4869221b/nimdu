let doc = """
nimdu

Usage:
  nimdu [options] [<dir>]

Options:
  -h --help    Show this screen.
  -v --version    Show version.
"""

import os, strformat, strutils
import docopt
import nimdupkg/common

let args = docopt(doc, version = nimduVersion)

var 
  baseDir: string
  fileCount: int
if args["<dir>"]:
  baseDir = $args["<dir>"]
  echo baseDir
var size: BiggestInt
for f in walkDirRec(baseDir):
  fileCount = fileCount + 1
  try:
    size += f.getFileSize
  except:
    echo fmt"{f}"
echo fmt"{size.formatSize}"
echo fmt"file is {filecount}"
echo fmt"1 file is {(int(int(size)/filecount)).formatSize}"
