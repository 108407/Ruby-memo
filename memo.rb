require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

 memo_type = gets.to_i # ユーザーの入力値を取得し、数学へ変換しています

 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp

  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  input_memo = STDIN.read # 複数行を「文字列」として取得する
  memo = input_memo.chomp
  CSV.open("#{file_name}.csv" , "w") do |csv| # "w"で書き込みの命令
  csv.puts ["#{memo}"]
  end

elsif memo_type == 2
  puts "拡張子を除いた既存ファイル名を記入してください"
  edit_name = gets.chomp

  puts "編集したい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  input_memo = STDIN.read
  memo = input_memo.chomp
  CSV.open("#{edit_name}.csv","a") do |csv| # "a"で追加の書き込みの命令
  csv.puts ["#{memo}"]
  end

else
    puts "1か2を入力してください"
end