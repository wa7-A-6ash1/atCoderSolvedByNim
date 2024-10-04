# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import math
import sequtils
import strutils

proc readInputThreeArgs(): (int, int, int) =
  let
    input = stdin.readLine()
    parts = input.split(" ").map(parseInt)
  
  var n, a, b: int
  n = parts[0]
  a = parts[1]
  b = parts[2]

  return (n, a, b)


proc getAllDigitSum(n: int): int =
  let digits: int = log10(n.float).int
  var 
    nBuff: int = n
    seqDigit: seq[int]

  for d in countdown(digits, 0):
    seqDigit.add(nBuff div 10^d)
    nBuff = nBuff mod 10^d

  return sum(seqDigit)


proc sumDigitNum(X: int, A: int, B: int): int =
  var numIsBetween: seq[int]

  for x in 1 .. X:
    let numSum = getAllDigitSum(x)

    if (A <= numSum) and (numSum <= B):
      numIsBetween.add(x)

  return sum(numIsBetween)


proc main() =
  let (n, a, b) = readInputThreeArgs()

  echo sumDigitNum(n, a, b)

main()
