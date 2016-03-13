# 最初の１００個のフィボナッチ数のリストを計算する関数を記述せよ。
# 定義では、フィボナッチ数列の最初の２つの数字は０と１で、次の数は前の２つの合計となる。
# 例えば最初の１０個のフィボナッチ数列は、0,1,1,2,3,5,8,13,21,34となる。
class ChallengeTree
  def fibonacci(x)
    arry = [0,1]
    if x < 3
      puts "引数は３以上の数値を指定してください"
      return
    end
    cnt = x
    for i in 1..cnt do
      num = arry[i-1] + arry[i]
      arry.push(num)
    end

    return arry
  end
end

obj = ChallengeTree.new
p obj.fibonacci(100)
