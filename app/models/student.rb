class Student < ApplicationRecord
  def full_name
    "#{last_name}, #{first_name}" 
  end





end
