# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import sequtils
import strutils

proc readInputN(): seq[int] =
  let n: int = stdin.readLine.parseInt
  let seqNum: seq[int] = stdin.readLine.split(" ").map parseInt
  result = seqNum

proc countAnableDivTwo(): int =
  let divTwo = proc (arg: int): int = arg div 2
  let hasOdd = proc (arg: int): bool = (arg mod 2 != 0)

  var 
    seqNum = readInputN()
    i: int = 0
  
  while any(seqNum, hasOdd) != true:
    seqNum = seqNum.map divTwo
    i += 1
  
  result = i

proc main() =
  echo countAnableDivTwo()

main()
    
