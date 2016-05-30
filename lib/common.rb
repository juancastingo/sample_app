# metodos comunes
module Common
  # Validates the size of an uploaded picture.
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, 'should be less than 5MB')
    end
  end

  def my_log(logging)
    Rails.logger.debug "\033[1;34;40m[DEBUG] Juanca-DEBUG: \033[0m " + logging
  end
end
