let doc = """
nimdu

Usage:
  nimdu
  nimdu <dir>
"""

import os, strformat, strutils
import docopt

let args = docopt(doc, version = "nimdu 0.2.0")

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
