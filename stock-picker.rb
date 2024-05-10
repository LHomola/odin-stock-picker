def stock_picker(array)
    max_profit = 0
    buy_idx = 0
    sell_idx = 0

    array.each_with_index do |bought, idx_buy|
        array[idx_buy+1...].each_with_index do |curr, idx_sell| 
            if curr - bought > max_profit
                max_profit = curr - bought
                buy_idx = idx_buy
                sell_idx = idx_sell + idx_buy + 1
            end
        end
    end

    p [buy_idx, sell_idx]
end

stock_picker([17,3,6,9,15,8,6,1,10])