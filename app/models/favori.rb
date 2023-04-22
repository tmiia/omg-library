class Favori < ApplicationRecord
  belongs_to :author
  belongs_to :ref_to
end
