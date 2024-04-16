class SampleCountries < ActiveRecord::Migration[6.1]
  def change
    Country.new(name: 'USA').save
    Country.new(name: 'Germany').save
    Country.new(name: 'Ukraine').save
  end
end
