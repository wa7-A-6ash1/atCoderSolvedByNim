# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import math
import algorithm
import sequtils
import strutils

proc readInputTwoLine(): (int, seq[int]) =
  let
    N: int = stdin.readLine().parseInt
    a: seq[int] = stdin.readLine().split(" ").map(parseInt)

  return (N, a)

proc sumSlicedSeq(a: seq[int]): (int, int) =
  let sortedA = sorted(a)

  var
    oddSeq: seq[int]
    evenSeq: seq[int]

  for i in countup(0, a.len - 1):
    if i mod 2 == 0:
      evenSeq.add(sortedA[i])
    else:
      oddSeq.add(sortedA[i])
  
  let
    sumOddSeq: int = oddSeq.sum()
    sumEvenSeq: int = evenSeq.sum()
  
  return (sumOddSeq, sumEvenSeq)

proc main() =
  let
    (N, a) = readInputTwoLine()
    (sumOddSeq, sumEvenSeq) = sumSlicedSeq(a)

  echo abs(sumOddSeq - sumEvenSeq)

main()
