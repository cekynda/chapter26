class NotExistingPlanetException < Exception
end

class SolarSystem
  def method_missing(m)
    begin
      raise NotExistingPlanetException "ошибка"
    rescue
      puts("Ошибка, планеты #{m} нет")
    end
  end

  def mercury
    puts 'Порядковый номер планеты: 1'
  end

  def venus
    puts 'Порядковый номер планеты: 2'
  end

  def mars
    puts 'Порядковый номер планеты: 4'
  end

  def earth
    puts 'Порядковый номер планеты: 3'
  end
end
planet = SolarSystem.new
planet.venus
planet.mercury
planet.hui
planet.mars
planet.sosi