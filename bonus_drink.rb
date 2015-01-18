class BonusDrink
  BASE_OF_BONUS = 3

  def self.total_count_for(amount)
    amount + bonus_count_for(amount)
  end

  def self.bonus_count_for(amount)
    return 0 if amount < BASE_OF_BONUS

    quot = amount / BASE_OF_BONUS
    rem = amount % BASE_OF_BONUS 
    new_bottole_count = quot
    new_bottole_count + bonus_count_for(quot + rem)
  end
end
