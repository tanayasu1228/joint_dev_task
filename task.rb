# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  puts names
end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)

  # 以下に回答を記載
  array = array1 + array2
  p array
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  p sports.compact!
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p array1.empty?
  p array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map! { |n| n * 10 }
  p numbers2
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  p array.map!(&:to_i)
end

def q8
  programming_languages = %w(ruby php python javascript)
  
  # 以下に回答を記載
  programming_languages.collect!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)
  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name,i|
    puts "会員No.#{i} #{name} "
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    puts food.include?("うに") ? "好物です" : "まぁまぁ好きです"
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  puts "ユーザーの趣味一覧"
  sports.flatten!.uniq!.each.with_index(1) do |sport,i| 
    puts "No#{i} #{sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  puts user_data.merge!(update_data)

end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  p data.keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  data = [data1, data2]
  data.each.with_index(1) do |d,i|
  puts d.key?(:age) ? "data#{i} OK":"data#{i} NG"
  end
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end
  def info
    # 有り無しの判断を変数で最初に定義しておく
    admin = @admin ? "有り" : "無し"
    # ヒアドキュメントを使用してinitializeの変数を出力
    puts <<~EOS
    名前：#{@name}
    年齢：#{@age}
    性別：#{@gender}
    管理者権限：#{admin} 
    EOS
  
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
  # young_old_typeメソッドの呼び出し

    age_type = young_old_type
    if age_type == "young_type"
      "はいさいまいど〜，#{@name}です！！！"
    else
      "こんにちは，#{@name}と申します。宜しくお願いいたします。"
    end
  end
end
  # 年齢で分岐させるメソッド
def young_old_type
  if @age < 18
    "young_type"
  else
    "old_type"
  end
end
def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_reader :name
  def initialize(name:)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_reader :name, :age
  # ユーザー名と年齢の初期設定
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
end

class Zoo
  # 以下に回答を記載
  #  attr_reader :name, :entry_fee はクラス内で呼び出しているので不要！
  # 年齢別価格の初期設定
  def initialize(**params)
    @name = params[:name]
    @infant = params[:entry_fee][:infant]
    @children = params[:entry_fee][:children]
    @adult = params[:entry_fee][:adult]
    @senior = params[:entry_fee][:senior]
  end

  def info_entry_fee(user)
  # 年齢別の料金区分
    age_yen = case user.age
    when (0..5)
      @infant
    when (6..12)
      @children
    when (13..64)
      @adult
    when (65..120)
      @senior
    end
    puts "#{user.name}さんの入場料金は#{age_yen}円です。"
    # puts "#{user.name}さんの#{@name}の入場料金は#{age_yen}円です。"
  end
end

def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end