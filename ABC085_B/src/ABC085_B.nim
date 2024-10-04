# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import algorithm
import sequtils
import strutils

proc readInputManyLine(): (int, seq[int]) =
  let
    N: int = stdin.readLine().parseInt
    X: seq[int] = mapIt(0..<N, stdin.readLine).map(parseInt)

  return (N, X)

proc sortAndDedupSeq(X: seq[int]): seq[int] = 
  var 
    sortedSeq: seq[int] = sorted(X)
    sortedDedupSeq: seq[int] = sortedSeq.deduplicate()

  return sortedDedupSeq


proc main() =
  let
    (N, X) = readInputManyLine()
    sortDedupSeq = sortAndDedupSeq(X)

  echo sortDedupSeq.len

main()
