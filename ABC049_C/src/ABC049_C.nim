# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import algorithm
import strutils

proc readInput(): string =
  let S: string = stdin.readLine()

  return S

proc searchString(S: string) = 
  let
    words: array[0..3, string] = ["maerd", "remaerd", "esare", "resare"]
    revS: string = S.reversed.join

  # 文字列を逆向きにして貪欲法で解く(全部見た)
  var 
    i: int = 0
    isEqual = true

  while i < S.len:
    
    var ableDivide = false
    for w in words:

      if w.len+i > S.len:
        continue

      if revS[i ..< i+w.len] == w:
        i += w.len
        ableDivide = true
        break

    if not ableDivide:
      isEqual = false
      break

  if isEqual:
    echo "YES"
  else:
    echo "NO"
  

proc main() =
  let S: string = readInput()
  
  searchString(S)


main()



# proc ableEqualtoS(S: string, T: string = ""): string =
#   let words: array[0..3, string] = ["dreamer", "dream", "eraser", "erase"]

#   if S.len <= T.len :
#     return T

#   for w in words:
#     var newT: string = [T, w].join("")
    
#     if startsWith(S, newT):
#       var res: string = ableEqualtoS(S, newT)

#       if res == S:
#         return res


# proc searchString(S: string): bool = 
#   let words: array[0..3, string] = ["maerd", "remaerd", "esare", "resare"]
#   var
#     revS: string = reversed(S)
#     T: string = ""

#   # 文字列を逆向きにして貪欲法で解く(やり方の指針だけ見た)
#   while T.len < S.len:
#     var 
#       cw = ""
#       lt = T.len
#     for w in words:
#       cw = w
#       if revS.startsWith([T, w].join("")):
#         T = [T, w].join("")
    
#     if cw == words[3] and lt == T.len:
#       break

#   return S == reversed(T)