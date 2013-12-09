class Product < ActiveRecord::Base


  belongs_to :group, :foreign_key => :group_id
  
  
  def self.create_database
    File.open("C:/Users/mustseeindia/Downloads/movies-catalog.csv", 'r') do |file|
      file.each do |line|
        line_arr = line.split(",")
        product = Product.new();
        group_id = ""
        if(line_arr[0] == "")
          group_id = line_arr[1].split("-")[0]
        else
          group_id = line_arr[0]
        end
        group = Group.find(:first, :conditions => "group_id = '#{group_id}'")
        if(group.nil?)
          group = Group.new()
          group.group_id = group_id
          group.name = line_arr[2]
          group.store = line_arr[3]
          group.category = line_arr[4]
          group.sub_category = line_arr[5]
          group.save
        end
        
        product.group_id = group.id
        product.id = line_arr[1]
        product.price = line_arr[6]
        product.shipping = line_arr[7]
        product.save
        
        
      end
    end
  end  
  


end
