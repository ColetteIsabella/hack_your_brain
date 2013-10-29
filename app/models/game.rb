class Game < ActiveRecord::Base
accepts_nested_attributes_for :level
has_many :levels
end
