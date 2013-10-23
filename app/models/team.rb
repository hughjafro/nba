class Team
	include Mongoid::Document

	field :name, type: String
	field :city, type: String
	field :pg, type: String	
	field :sg, type: String	
	field :sf, type: String	
	field :pf, type: String	
	field :ctr, type: String	

end