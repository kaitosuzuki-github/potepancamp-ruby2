hand_judge = 0          # 0:じゃんけん前 1:あいこ 2:勝ち 3:負け

while true
  case hand_judge
  when 0
    puts "じゃんけん..."
  end

  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  user_hand = gets.to_i
  computer_hand = Random.rand(3)

  case user_hand
  when 0, 1, 2
    case hand_judge
    when 0
      puts "ホイ！"
    when 1
      puts "ショ！"
    end
  when 3
    puts "--------------------"
    puts "戦わずに終了"
    break
  else
    puts "--------------------"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)を入力してください"
    break
  end

  puts "--------------------"

  case user_hand
  when 0
    puts "あなた:グーを出しました"
    case computer_hand
    when 0
      puts "相手:グーを出しました"
      puts "--------------------"
      puts "あいこで..."
      hand_judge = 1
    when 1
      puts "相手:チョキを出しました"
      puts "--------------------"
      hand_judge = 2
    when 2
      puts "相手:パーを出しました"
      puts "--------------------"
      hand_judge = 3
    end
  when 1
    puts "あなた:チョキを出しました"
    case computer_hand
    when 0
      puts "相手:グーを出しました"
      puts "--------------------"
      hand_judge = 3
    when 1
      puts "相手:チョキを出しました"
      puts "--------------------"
      puts "あいこで..."
      hand_judge = 1
    when 2
      puts "相手:パーを出しました"
      puts "--------------------"
      hand_judge = 2
    end
  when 2
    puts "あなた:パーを出しました"
    case computer_hand
    when 0
      puts "相手:グーを出しました"
      puts "--------------------"
      hand_judge = 2
    when 1
      puts "相手:チョキを出しました"
      puts "--------------------"
      hand_judge = 3
    when 2
      puts "相手:パーを出しました"
      puts "--------------------"
      puts "あいこで..."
      hand_judge = 1
    end
  end

  case hand_judge
  when 2, 3
    puts "あっちむいて〜"
    puts "0(上)1(下)2(左)3(右)"
    user_point = gets.to_i
    computer_point = Random.rand(4)

    case user_point
    when 0,1,2,3
      puts "ホイ！"
    else
      puts "--------------------"
      puts "0(上)1(下)2(左)3(右)を入力してください"
      break
    end

    puts "--------------------"

    case user_point
    when 0
      puts "あなた:上"
    when 1
      puts "あなた:下"
    when 2
      puts "あなた:左"
    when 3
      puts "あなた:右"
    end

    case computer_point
    when 0
      puts "相手:上"
    when 1
      puts "相手:下"
    when 2
      puts "相手:左"
    when 3
      puts "相手:右"
    end

    if user_point == computer_point
      puts "--------------------"

      case hand_judge
      when 2
        puts "あなたの勝ちです！"
      when 3
        puts "あなたの負けです"
      end

      break
    end

    hand_judge = 0
    puts "--------------------"

  end
end