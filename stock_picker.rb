puts "Please enter your predictions for the next days"
input = gets.chomp.split(",")
predictions = []

input.each_with_index do |n, idx| 
    predictions[idx] = n.to_i
end
    
couples = []

predictions.each_with_index do |n, idx| 
    i = idx + 1
    while i < predictions.length
        couples.push([idx, i, n, predictions[i]])
        i += 1
    end
end


def best_deal(couples)
    best = couples[0]
    i = 1
    while i < couples.length
        if (couples[i][3] - couples[i][2]) > (best[3] - best[2])
            best = couples[i]
        end
        i += 1
    end
    result = [best[0], best[1]]
    puts "You should buy day #{best[0]} and sell day #{best[1]}"
end

best_deal(couples)


