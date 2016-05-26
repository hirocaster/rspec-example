class Item < ActiveRecord::Base

  def self.ordered_by_name
    self.order(:name)
  end
end
