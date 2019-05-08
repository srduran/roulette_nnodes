module GameHelper

  def select_color
    random_number = rand(1..100)
    if random_number.between?(1..49)
      return "rojo"
    elsif random_number.between?(50..98)
      return "negro"
    else
      return "verde"
    end
  end
  
end
