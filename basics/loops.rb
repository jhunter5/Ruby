# loop loop

hi_times = 0

loop do
    if hi_times < 2
        puts "hi"
        hi_times += 1
    elsif hi_times >= 2 && hi_times < 5
        puts "still here?"
        hi_times += 1
    end
    break if hi_times == 5
end

puts "go away"


# while loop

# BEGIN: while-loop-example

x = 1

while x <= 5
    puts x
    x += 1
end

# END: while-loop-example

# until loop

bank_account= 100

until bank_account <= 0
    puts "I will buy a new laptop"
    bank_account -= 50
end 

# ranges

(1..5) # 1,2,3,4,5
(1...5) # 1,2,3,4

# for loop

for i in (0..5)
    puts "#{i} homies"
end

#times loop

5.times do
    puts "hello"
end

5.times do |i|
    puts "#{i} hello"
end


# up to and down to
5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " } 