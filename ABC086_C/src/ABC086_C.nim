# import math
# import algorithm
import sequtils
import strutils

# 分からなくて全部読んだ
proc readInputManyArgs(): (int, seq[int], seq[int], seq[int]) =
  let
    s: seq[int] = stdin.readLine().split(" ").map(parseInt)
    N: int = s[0]

  var T, X, Y: seq[int] = newSeq[int]()
  
  T.add(0)
  X.add(0)
  Y.add(0)

  for i in 0 ..< N:
    let s2: seq[int] = stdin.readLine().split(" ").map parseInt
    T.add(s2[0])
    X.add(s2[1])
    Y.add(s2[2])
    
  return (N, T, X, Y)


proc searchMove(N: int, T: seq[int], X: seq[int], Y: seq[int]): bool =

  var canMove: bool = true
  for i in 0 ..< N:
    let
      timeDiff: int = T[i + 1] - T[i]
      distance: int = abs(X[i + 1] - X[i]) + abs(Y[i + 1] - Y[i])

    if timeDiff < distance:
      canMove = false
    if (distance mod 2) != (timeDiff mod 2):
      canMove = false

  return canMove


proc main() =
  let 
    (N, T, X, Y) = readInputManyArgs()
    canMove = searchMove(N, T, X, Y)

  if canMove:
    echo "Yes"
  else:
    echo "No"
    

main()






# proc searchRoute(t: int, targetX: int, targetY: int, x: int = 0, y: int = 0): bool =
#   if t == 0:
#     return x == targetX and y == targetY

#   let distance: int = (targetX - x) + (targetY - y)
#   if distance > t:
#     return false

#   let newT = t - 1
#   let canMove: bool = [
#     searchRoute(newT, targetX, targetY, x+1, y), 
#     searchRoute(newT, targetX, targetY, x-1, y), 
#     searchRoute(newT, targetX, targetY, x, y+1), 
#     searchRoute(newT, targetX, targetY, x, y-1), 
#   ].anyIt(it == true)

#   return canMove