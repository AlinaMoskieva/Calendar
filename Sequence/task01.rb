class Sequence
  def determine
    puts 'введите длинну последовательности'
    blocks = gets.to_i # количество блоков
    digit = 1 # первое число последовательности
    count = 1 # количество повторений символа
    result = '' # ответ
    if blocks < 1
      puts 'длинна последовательности должна быть положительным числом'
    else
      puts "длинна последовательности: #{blocks}"
      puts digit
      while blocks > 1
        array = []
        digit.to_s.each_char  { |c| array.push(c) }
        first = array[0]
        array.delete_at[0]

        if array.empty?
          result = count.to_s + digit.to_s
          puts result
          digit = result
        else
          buf = ''
          count = 1

          array.each do |char|
            if first == char
              count += 1
              buf = char
            else
              result += count.to_s + first
              first = char
              count = 1
              buf = char
            end
          end
          result += count.to_s + buf
          puts result
        end

        digit = result
        blocks -= 1
        result = ''
      end
    end
  end
end

sequence = Sequence.new
sequence.determine




