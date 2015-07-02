class Cart < ActiveRecord::Base
  include Payola::Sellable
end
