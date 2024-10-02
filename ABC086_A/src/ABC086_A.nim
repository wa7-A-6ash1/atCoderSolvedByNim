# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import sequtils
import strutils

proc readInputTwoArgs(): (int, int) =
  let
    input = stdin.readLine()
    parts = input.split(" ").map(parseInt)
  
  var a, b: int
  a = parts[0]
  b = parts[1]
    
  return (a, b)


proc returnOddOrEven(a: int, b: int) =
  let c: int = a * b
  if c mod 2 == 0:
    echo "Even"
  else:
    echo "Odd"


proc main() =
  let (a, b) = readInputTwoArgs()

  returnOddOrEven(a, b)

main()