# 正の整数のリストを与えられた時、数を並び替えて可能な最大数を返す関数を
# 記述せよ。例えば、[50,2,1,9]が与えられた時、95021が答えとなる。
class ChallengeFour

  # 配列の中身の桁を全て同じにし、降順にソートして出力すればよい。
  def maximumNumber(arry)

    arryObj = Array.new
    maxDigit = 0

    arry.each do |val|
      arryObj.push(ValueObj.new(val))
      if maxDigit < val.to_s.length
        maxDigit = val.to_s.length
      end
    end

    arryObj = arryObj.sort_by {|obj| obj.pseudoValue(maxDigit)}.reverse
    ret = ""
    arryObj.each do |obj|
      ret = ret + obj.value.to_s
    end

    return ret
  end
end

# 配列の値を保持するクラス
class ValueObj

  attr_reader :value
  attr_reader :length

  def initialize(value)
    @value = value
    @length = value.to_s.length
  end

  # 指定した桁数にして値を取得する。
  # 例えば元々の値が38で引数が4の場合、3800が取得できる。
  def pseudoValue(digit)
    if(length >= digit)
      return value
    end
    multiCnt = digit - length
    return value * (10 ** multiCnt)
  end

end

obj = ChallengeFour.new
p obj.maximumNumber([5,212,156,310,87,3906])
