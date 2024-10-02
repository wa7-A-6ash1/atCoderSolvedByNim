# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import strutils

proc readInputNums(): (int, int, int, int) =
  let
    A: int = stdin.readLine.parseInt
    B: int = stdin.readLine.parseInt
    C: int = stdin.readLine.parseInt
    X: int = stdin.readLine.parseInt
  
  return (A, B, C, X)

proc countCombinations(A: int, B: int, C: int, X: int): int =
  var numSameAmountCombinations = 0

  for a in countup(0, A):
    for b in countup(0, B):
      for c in countup(0, C):
        let amountFiveHundred: int = a * 500
        let amountOneHundred: int = b * 100
        let amountFifty: int = c * 50
        let sumAmount = amountFiveHundred + amountOneHundred + amountFifty

        if sumAmount == X:
          numSameAmountCombinations += 1

  return numSameAmountCombinations


proc main() =
  let 
    (A, B, C, X) = readInputNums()
    numSameAmountCombinations = countCombinations(A, B, C, X)
  
  echo numSameAmountCombinations

main()
