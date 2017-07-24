input = File.open('./weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)

smallest_difference = 9999999999
row_number = 0
array.each do |row|
  if row[0] != array[0][0] && row != []
    if smallest_difference > row[1].to_i - row[2].to_i
      smallest_difference = row[1].to_i - row[2].to_i
      row_number = row[0].to_i
    end
  end
end
p row_number
