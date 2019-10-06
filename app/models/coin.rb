class Coin < ApplicationRecord
    belongs_to :mining_type #, optional: true # o campo pode ser vazio
end
