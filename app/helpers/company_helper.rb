module CompanyHelper


	 def find_company
	 	response = HTTParty.get('http://edgaronline.api.mashery.com/v2/corefinancials/ann?fields=IncomeStatementConsolidated&entityids=8528%2C8530&fiscalperiod=2014q4&activecompanies=false&deleted=false&sortby=primarysymbol+asc&debug=false&appkey=acjgxsc9n4y5qte978nk44y3')
	 	json = JSON.parse(response.body)
	 	puts json
	end 

	end
