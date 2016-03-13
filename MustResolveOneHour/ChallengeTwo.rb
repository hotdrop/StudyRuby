# 交互に要素をとることで、２つのリストを結合する関数を記述せよ。
# 例えば[a,b,c]と[1,2,3]という２つのリストなら関数は[a,1,b,2,c,3]を返す。

class ChallengeTwo

  def alternatelyJoinList(firstList, secondList)
    if firstList.length != secondList.length
      puts "この関数は、２つのリストが同じ要素数でなければ使用できません。"
    return
    end
    arr = Array.new
    for cnt in 0..firstList.length-1 do
      arr.push(firstList[cnt])
      arr.push(secondList[cnt])
    end

    return arr
  end
end

firstList = [50,30,20,40]
secondList = ["a","b","c"]
obj = ChallengeTwo.new
p obj.alternatelyJoinList(firstList, secondList)
