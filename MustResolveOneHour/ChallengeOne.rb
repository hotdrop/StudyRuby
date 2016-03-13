# forループ、Whileループ、および再帰を使用して、リスト内の
# 数字の合計を計算する３つの関数を記述せよ。

class ChallengeOne

  def forloop(inList)
    addNum = 0
    for x in inList do
      addNum += x
    end
    return addNum
  end

  def whileloop(inList)
    addNum = 0
    cnt = 0
    while cnt < inList.length do
      addNum += inList[cnt]
      cnt += 1
    end
    return addNum
  end

  @addNum
  def recursive(inList)
    @addNum = 0
    fact(inList, inList.length-1)
    return @addNum
  end

  private
  def fact(inList, n)
    @addNum += inList[n]
    if n > 0
      fact(inList, n-1)
    end
  end

end

inList = [10,830,376,40,10,70,54,843,2]
obj = ChallengeOne.new
ret = obj.forloop(inList)
puts "forループ：" + ret.to_s
ret = obj.whileloop(inList)
puts "whileループ：" + ret.to_s
ret = obj.recursive(inList)
puts "再帰：" + ret.to_s
