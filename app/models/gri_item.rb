class GriItem < ActiveRecord::Base
	searchkick text_start: [:name], autocomplete: ['name'], suggest: ['name']
end
