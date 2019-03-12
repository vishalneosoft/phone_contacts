class Contact < ApplicationRecord  
  validates :first_name, :last_name, presence: true
  validates :telephone, presence: true, numericality: true, length: { minimum: 10, maximum: 10 }

  NUMBER_VALUE = {
    '2' => ['a', 'b', 'c'],
    '3' => ['d', 'e', 'f'],
    '4' => ['g', 'h', 'i'],
    '5' => ['j', 'k', 'l'],
    '6' => ['m', 'n', 'o'],
    '7' => ['p', 'q', 'r', 's'],
    '8' => ['t', 'u', 'v'],
    '9' => ['w', 'x', 'y', 'z']
  }

  def full_name
    first_name + ' ' + last_name
  end

  def self.get_combination(combination, next_digits)
    if next_digits == ""
      @output << combination
    else
      for letter in Contact::NUMBER_VALUE[next_digits[0]] do
        get_combination(combination + letter, next_digits[1..-1])
      end
    end
  end

  def self.number_word_combination(digits)
    @output = []
    if digits
      get_combination("", digits)
    end

    @output
  end

  def self.search(search_params)
    contacts = self.all
    return contacts if search_params.blank? || search_params[:user_number].blank?
    if search_params.present? && search_params[:user_number].present?
      contacts_search = contacts.where("contacts.telephone LIKE ? ", "%#{search_params[:user_number]}%")
      unless search_params[:user_number].include?('0') && search_params[:user_number].include?('1')
        letter_array = number_word_combination(search_params[:user_number])
        search_array = letter_array.map {|val| "%#{val}%" }
        name_search = contacts.where("contacts.first_name ILIKE ANY ( array[?] ) OR contacts.last_name ILIKE ANY ( array[?] )", search_array, search_array)
        contacts_search = (contacts_search + name_search).uniq
      end
    end
    contacts_search
  end

end
