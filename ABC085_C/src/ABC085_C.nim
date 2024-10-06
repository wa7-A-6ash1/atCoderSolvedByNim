# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
# import math
# import algorithm
import sequtils
import strutils
# import std/tables

proc readInputTwoArgs(): (int, int) =
  let
    s: seq[int] = stdin.readLine().split(" ").map(parseInt)
    N: int = s[0]
    Y: int = s[1]

  return (N, Y)

# z = N - x - yであることに着目すれば2重ループにできる
proc searchOtoshidamaComb(N: int, Y: int): (int, int, int) =
  for x in 0 .. N:
    for y in 0 .. N - x:
      let 
        z = N - x - y
        nums: int = x + y + z
        amount: int = 10000*x + 5000*y + 1000*z

      if nums == N and amount == Y:
        return (x, y, z)

  return (-1, -1, -1)


proc main() =
  let 
    (N, Y) = readInputTwoArgs()
    (x, y, z) = searchOtoshidamaComb(N, Y)

  echo x, " ", y, " ", z

main()


# proc searchOtoshidamaComb(N: int, Y: int): (int, int, int) =

#   let currencies: array[0..2, int] = [10000, 5000, 1000]
#   var 
#     newY: int = Y
#     newN: int
#     nums: array[0..2, int] = [0, 0, 0]
#     amount: int = 0

#   for i in 0 ..< 3:
#     newN = newY div currencies[i]
#     amount += currencies[i] * newN
  
#     if amount == Y and (sum(nums) + newN) < N:
#       amount -= currencies[i] * newN
#       continue

#     nums[i] = newN
#     newY = newY mod currencies[i]

#   let sumN = sum(nums)
#   amount = currencies[0]*nums[0] + currencies[1]*nums[1] + currencies[2]*nums[2]

#   echo sumN, " ", amount

#   if sumN == N and amount == Y:
#     return (nums[0], nums[1], nums[2])
#   else:
#     return (-1, -1, -1)