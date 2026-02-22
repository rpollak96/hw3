class Entry < ApplicationRecord
  # talks to the "entries" table
  belongs_to :place
end
