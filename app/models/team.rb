class Team
	include Mongoid::Document

	field :name, type: String
	field :city, type: String

end