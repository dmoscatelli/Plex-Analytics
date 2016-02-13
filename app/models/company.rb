class Company < ActiveRecord::Base
	searchkick text_start: [:name, :ticker], autocomplete: ['name', 'ticker'], suggest: ['name']
end
