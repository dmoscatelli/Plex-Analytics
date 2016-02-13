class ItemsController < ApplicationController

require 'HTTParty'


	def autocomplete
		gri = GriItem.search(params[:query],  autocomplete: false, limi: 10).map(&:name) 
		company = Company.search(params[:query],  autocomplete: false, limi: 10).map(&:name) 
		render json: (gri + company)
	end 

	def search
		if params[:search].present?
			@company = Company.search(params[:search], suggest: true)
			@gri_items = GriItem.search(params[:search], suggest: true)
			@ticker = Company.find_by(name: params[:search]).ticker
		else 
			@gri_items = GriItem.all
		end 
 	


		
 		@CF = HTTParty.get('http://edgaronline.api.mashery.com/v2/corefinancials/ann?fields=CashFlowStatementConsolidated&primarysymbols=' + @ticker + '&numperiods=1&activecompanies=false&deleted=false&sortby=primarysymbol+asc&debug=false&appkey=acjgxsc9n4y5qte978nk44y3')
	  	@BS = HTTParty.get('http://edgaronline.api.mashery.com/v2/corefinancials/ann?fields=BalanceSheetConsolidated&primarysymbols=' + @ticker + '&numperiods=1&activecompanies=false&deleted=false&sortby=primarysymbol+asc&debug=false&appkey=acjgxsc9n4y5qte978nk44y3')
	  	@IS = HTTParty.get('http://edgaronline.api.mashery.com/v2/corefinancials/ann?fields=IncomeStatementConsolidated&primarysymbols=' + @ticker + '&numperiods=1&activecompanies=false&deleted=false&sortby=primarysymbol+asc&debug=false&appkey=acjgxsc9n4y5qte978nk44y3')

	  	

	  	
		

  
  	end


  

    



end
