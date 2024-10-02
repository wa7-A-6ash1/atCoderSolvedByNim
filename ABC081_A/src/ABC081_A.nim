# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import strutils

proc returnInputThreeArgs(): (int, int, int) =
  let
    input = stdin.readLine()
  
  var s1, s2, s3: int
  s1 = parseInt(input[0 .. 0])
  s2 = parseInt(input[1 .. 1])
  s3 = parseInt(input[2 .. 2])
    
  return (s1, s2, s3)


proc sumArgs(s1: int, s2: int, s3: int): int =
  result = s1 + s2 + s3


proc main() =
  let (s1, s2, s3) = returnInputThreeArgs()
  echo sumArgs(s1, s2, s3)

main()