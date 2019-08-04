# frozen_string_literal: true

# A product has certain statistics for:
# - the shop he's in
# - the aisle he's in
# - the shelf he's on
# - a date range
class ProductStatistics
  def initialize(product, shop, aisle, shelf, start_date, end_date)
    @product = product
    @shop = shop
    @aisle = aisle
    @shelf = shelf
    @start_date = start_date
    @end_date = end_date
  end

  def calculate
    {
      bought: bought_statistics(product, shop, aisle, shelf, start_date, end_date),
      sold: sold_statistics(product, shop, aisle, shelf, start_date, end_date),
      returned: returned_statistics(product, shop, aisle, shelf, start_date, end_date),
      # .
      # .
    }
  end
end
