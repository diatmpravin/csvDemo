class Employee < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :position, :positiontitle, :reportto
  
  #validates :reportto, :uniqueness => true
  #validates :lastname, :presence => true
  #validates :firstname, :presence => true


  def self.build_from_csv(row)
  	#raise row[1].inspect 
  	@error = nil  	
  	if row[1] == '6'
  		@error = 'Maisa Pride'  		
  	end 	
  	cust = self.find_or_initialize_by_position(row[0])  	
    cust.attributes ={:position => row[0],
     :reportto => row[1],
     :firstname => row[2],
     :lastname => row[3],
     :positiontitle => row[4]}
    return cust,@error
  end
  
  def self.importHeader  	
  	"Position,ReportTo,First Name,Last Name,Position title".split(',')
  end
  
  def self.report(employee)
  	aReport = Hash.new
  	if !employee.nil?
			employee.each do |aEmployee|
				if aEmployee.reportto == 0
					Employee.where(:reportto => aEmployee.position).each do | eachReportor |						
						aReport[aEmployee.position] << eachReportor.position  
					end
					raise aReport[aEmployee.position].inspect
				end
			end
		end	
  end
end
