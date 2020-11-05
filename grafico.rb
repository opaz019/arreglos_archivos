data = [5, 3, 2, 5, 10]


def chart(array)
    max = array.max
    array.each do |num|
        puts "|" + "**" * num
    end
    print ">" + "--" * max
    print "\n"
    (1..max).each{ |n| print "#{n} " }
end

chart(data)