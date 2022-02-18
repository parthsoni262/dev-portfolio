class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thunmb_image

  def self.angular
    where(subtitle: 'Angular')    
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby On Rails')     }
end
