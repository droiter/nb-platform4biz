class HomeController < ApplicationController
  def index

		require 'open-uri'
		require 'json'

#		res = open('https://sandbox-quickbooks.api.intuit.com/v3/company/1440855105/reports/BalanceSheet?=Sample%20request%20body%20unavailable&minorversion=4')

		begin
			res = open('https://sandbox-quickbooks.api.intuit.com/v3/company/1440855105/reports/ProfitAndLoss?minorversion=4',
				'Accept'	=> 'application/json',
				'Host'	=> 'sandbox-quickbooks.api.intuit.com',
				'Authorization'	=> 'OAuth',
				'oauth_token'	=> "qyprduJm3JaSkv8snemPi7QpYd7BUNbmyXcdyzHEalOyKY3j",
				'oauth_nonce'	=> "efc64282-8cd6-4760-afba-dff0de83caed",
				'oauth_consumer_key'	=> "qyprdE7ZtFZBzQcOkjsW8k6cDU1leA",
				'oauth_signature_method'	=> "HMAC-SHA1",
				'oauth_timestamp'	=> "1455474615",
				'oauth_version'	=> "1.0",
				'oauth_signature'	=> "cQrGlD6gDe8jsp8RZE7cwXCznJI%3D"
			)

		rescue => error
			response = error.io
			logger.debug("Error #{response.status}")
		end

		category_list = []
		revenue_list	= []
		income_list		= []

		category_list_dummy = []
    revenue_list_dummy  = []
    income_list_dummy   = []

		if session[:user_id]

			assignments = Assignment.where(:user_id => session[:user_id])
			@organizations = Organization.where(id:  assignments.map{|t|t.organization_id})

			@organizations.each do |organization|
				category_list.push(organization.name)
				revenue_list.push(1000)
				income_list.push(1000)
			end
			

			category_list_dummy = ["Intuit", "Banpil Photonics", "Open Source Innovation Labs"]
			revenue_list_dummy	= [14119, 5058, 4985]
			income_list_dummy	= [10210, 4127, 5340]


			@chart = LazyHighCharts::HighChart.new('graph') do |f|
 				f.title(:text => "Financial Performance")
				f.xAxis(:categories => category_list)
				f.series(:name => "Revenue", :yAxis => 0, :data => revenue_list)
				f.series(:name => "Net Income", :yAxis => 1, :data => income_list)

 				f.yAxis [
   				{:title => {:text => "Revenue [USD]", :margin => 70} },
   				{:title => {:text => "Net Income [USD]"}, :opposite => true},
 				]

				f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical',)
				f.chart({:defaultSeriesType=>"column"})
			end

			render :dashboard
		end
  end
end
