profile = {
  "ニックネーム" => "kzkio",
  "年齢" => "31歳",
  "趣味" => "爬虫類飼育など",
  "出身地" => "埼玉県"
}

additional_questions_and_answers = {
  "ニックネーム" => {
    "question" => "なぜニックネームをkzkioにしたか聞きたいですか？(はい/いいえ)",
    "answer" => "自分の名前が、よくある名前なので下の名前＋苗字をローマ字で書いて１文字抜いて誰も被らないようにしてみました。読みづらいのでkzて呼んでもいいですよ！"
  },
  "年齢" => {
    "question" => "具体的な生年月日も知りたいですか？(はい/いいえ)",
    "answer" => "1992年1月14日生まれです。"
  },
  "趣味" => {
    "question" => "どんな爬虫類を飼っていますか？聞きたいですか？(はい/いいえ)",
    "answer" => "アミメミズベトカゲとアストロジャイアントダイビングスキンクなどを飼っています！"
  },
  "出身地" => {
    "question" => "埼玉県の何処の辺に住んでるか知りたいですか？(はい/いいえ)",
    "answer" => "お茶の有名な所です！。"
  }
}

reptile_details = {
  "アミメ" => {
    "description" => "アミメミズベトカゲは、マダカスカルに住んでいるトカゲで水の流れ余りない水辺に住んでいます。",
    "image" => "https://drive.google.com/file/d/11rLinPaIqJOFBbil2fXz84cJ9cXxRc3K/view?usp=drive_link"
  },
  "アストロ" => {
    "description" => "アストロジャイアントダイビングスキンクは、マダガスカルに住んでいて川辺などに住んでいます。甲殻類を食べます",
    "image" => "https://drive.google.com/file/d/123o--vipqbaB_-bvB_zNzTOQ29RNt9O6/view?usp=drive_link"
  }
}

def show_reptile_info(reptile_details)
    loop do
      puts "どちらについて知りたいですか？(アミメ/アストロ)"
      choice = gets.chomp
      if reptile_details.key?(choice)
        puts reptile_details[choice]["description"]
        puts "画像はこちら: #{reptile_details[choice]["image"]}"
        puts "他のトカゲについて知りたいですか？(はい/いいえ)"
        additional_input = gets.chomp
        if additional_input == "はい"
          next
        elsif additional_input == "いいえ"
          puts "わかりました。"
          break
        else
          puts "「はい」または「いいえ」を入力してください。"
        end
      else
        puts "「アミメ」または「アストロ」を入力してください。"
      end
    end
  end
  
  def show_profile_info(profile, additional_questions_and_answers, reptile_details)
    loop do
      puts "あなたが知りたいのは何ですか？(#{profile.keys.join('、')}のいずれかを入力してください。終了する場合は'終了'と入力してください。)"
      input = gets.chomp
      if input == "終了"
        puts "私の自己紹介を見ていただき、誠にありがとうございました。"  # ここにメッセージを追加
        break
      elsif profile.key?(input)
        puts "#{input}についてですね。#{profile[input]}です。"
        puts additional_questions_and_answers[input]["question"]
        additional_input = gets.chomp
        if additional_input == "はい"
          puts additional_questions_and_answers[input]["answer"]
          if input == "趣味"
            show_reptile_info(reptile_details)
          end
        elsif additional_input == "いいえ"
          puts "わかりました。"
        else
          puts "「はい」または「いいえ」を入力してください。"
        end
      else
        puts "入力が正しくありません。"
      end
    end
  end
  
  show_profile_info(profile, additional_questions_and_answers, reptile_details)
  