class UserException < Exception
end

class User
  attr_accessor :name, :surname, :patronymic, :mail
  VALID_NAME = /^[a-zA-Z0-9]*$/
  VALID_EMAIL = /^[a-z0-9]+@[a-z0-9]+\.[a-z]+/

  def initialize(name, surname, patronymic, mail)
    @name = name
    @surname = surname
    @patronymic = patronymic
    @email = mail
    begin
      if @name =~ VALID_NAME
        raise UserException, 'Некорректное имя'
      elsif @email !=~ VALID_EMAIL
        raise UserException, 'Некорректная почта'
      end
    rescue UserException => e
      puts "Возникла ошибка: #{e.message}"
    end
  end
end

user = User.new('никита', 'voloshin', 'olegovich', 'фывфыв@mail.ru')