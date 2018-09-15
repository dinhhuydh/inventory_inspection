class Product < ActiveRecord::Base
  rails_admin do
  end

  def test_method(a,b,c,d)
    puts 'aa'
  end
end
