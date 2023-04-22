class Book < ApplicationRecord
  belongs_to :author
  belongs_to :type
  belongs_to :owner
  belongs_to :reader
end
