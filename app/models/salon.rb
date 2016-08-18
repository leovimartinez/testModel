class Salon < ActiveRecord::Base
  belongs_to :curso, dependent: :destroy
end
