class Point < ActiveRecord::Base
  acts_as_mappable :auto_geocode => true,
                   :default_units => :kms, 
                   :default_formula => :sphere, 
                   :distance_field_name => :distance,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng
                   
  def to_poi(current_point)
    {
       :actions => [], 
       :attribution => "www.mcdonald.com.hk",
       :id => id,
       :imageURL => nil,
       :lat => lat,
       :lon => lng,
       :title => name,
       :line2 => address,
       :line3 => phone,
       :line4 => "",
       :type => 0
    }
  end
end