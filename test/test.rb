#!/usr/bin/env ruby

status = 0

%w[
  test
  test_anki21
].each do |test|
  `./bin/apkg-to-csv test/#{test}.apkg > test/__compare_#{test}.csv`
  if File.read("./test/#{test}.csv") != File.read("test/__compare_#{test}.csv")
    puts "Test #{test} failed:"
    status = 1
  end
  `rm test/__compare_#{test}.csv`
end

exit status
