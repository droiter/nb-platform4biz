class HomeController < ApplicationController
  def index

=begin
		begin

			res = open('https://sandbox-quickbooks.api.intuit.com/v3/company/1440855105/reports/ProfitAndLoss?minorversion=4',
				'Accept'	=> 'application/json',
				'Host'	=> 'sandbox-quickbooks.api.intuit.com',
				'Authorization'	=> 'OAuth oauth_token="qyprdv2szDj7wEOYlsko7n6Q7UxEgnrRyNqq8t8l9yP7oUcB",oauth_nonce="44b4226f-db90-4d9a-b0b5-4aedd1841b9a",oauth_consumer_key="qyprdE7ZtFZBzQcOkjsW8k6cDU1leA",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1455486018",oauth_version="1.0",oauth_signature="Mlm%2F9Aveie0BIet3rcLDKPY3uMY%3D"')

			@code, @message = res.status

			if @code == '200'

				@result = ActiveSupport::JSON.decode res.read
			end

		rescue => error
			response = error.io
			@code = response.status
			logger.debug("Error #{response.status}")
		end
=end

		#======= Variable =======

		category_list = []
		revenue_list	= []
		income_list		= []

		category_list_dummy = []
    revenue_list_dummy  = []
    income_list_dummy   = []


		#======= If logged in =======

		if session[:user_id]

			assignments = Assignment.where(:user_id => session[:user_id])
			@organizations = Organization.where(id:  assignments.map{|t|t.organization_id})

			@organizations.each do |organization|
				category_list.push(organization.name)
				revenue_list.push(1000)
				income_list.push(1000)
			end
			

			#======= Dummy Data =======

			category_list_dummy = ["Intuit", "Banpil Photonics", "Open Source Innovation Labs"]
			revenue_list_dummy	= [14119, 5058, 4985]
			income_list_dummy	= [10210, 4127, 5340]


			#======= Prepare Chart =======

			set_chart(category_list, revenue_list, income_list)


			#======= Rendering =======

			render :dashboard

		end
  end

	private

	def set_chart(category_list, revenue_list, income_list)
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
	end
end
