# 1,2....9の数をこの順序で、"+","-",またはなにもせず結果が１００となる
# あらゆる組み合わせを出力するプログラムを記述せよ。
# 例えば、1+2+34-5+67-8+9=100となる。
class ChallengeFive

  @arry=[1,2,3,4,5,6,7,8,9]
  attr_read :retarry

  def initialize()
    retarry = Array.new
  end

  # MAXで８個の＋とーを入れる。次に７個の＋とーを入れる
  # これを１になるまで繰り返す
  def resultHundredFormula
    # 記号８と指示したら１＋２＋・・＋９をはじめとし＋ーの組み合わせで計算をする。１００に合致するものがあればそれを結果配列にいれる
  end

  # 記号
  def createCalc(8)
    ret = 0
    @arry.each do |x|
      ret = ret + x
    end
  end

end

obj = ChallengeFive.new
p obj.calc
