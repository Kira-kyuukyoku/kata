def optimal_price(flights)
  depart = []
  duree  = []
  prices = []
  arrive = 0
  best_price = 0
  gainmax = []
  i = 0
  j = 0

  flights.each do |flight|
    depart << flight[0]
    duree  << flight[1]
    prices << flight[flight.length - 1]
  end

  if flights.length > 1
      while i < flights.length-1 do
          arrive = flights[i][0] + flights[i][1]
          while j < flights.length-1 do
              if arrive <= depart[j+1]
                  gainmax << prices[i] + prices[j+1]
                  best_price = gainmax.max
              else
                  best_price = prices.max
              end
                j +=1
          end
        i += 1
      end
  else
      best_price = prices.max
  end

  best_price
end