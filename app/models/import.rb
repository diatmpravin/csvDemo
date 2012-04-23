class Import < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :position, :positiontitle, :reportto
  
  
  def self.build_from_csv(row)  	
  	cust = Import.find_or_initialize_by_position(row[0])  	
    cust.attributes ={:position => row[0],
     :reportto => row[1],
     :firstname => row[2],
     :lastname => row[3],
     :positiontitle => row[4]}
    return cust
  end
  
  def self.importHeader(row)  	
  	"Position,ReportTo,First Name,Last Name,Position title".split(',')
  end
  
end
