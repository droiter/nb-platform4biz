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

		category_list 			= []
		direct_list					= []
		overhead_list				= []
		sga_list						= []
		other_list					= []
		netincome_list			= []


		#======= If logged in =======

		if session[:user_id]

			assignments = Assignment.where(
				:user_id => session[:user_id]
			)

			@organizations = Organization.where(
				id:  assignments.map{|t|t.organization_id}
			)

			@organizations.each do |organization|
				category_list.push(organization.name)
				direct_list.push(1000)
				overhead_list.push(1000)
				sga_list.push(1000)
				other_list.push(1000)
				netincome_list.push(1000)
			end
			

			#======= Prepare Chart =======

			set_chart(
				category_list,
				direct_list,
				overhead_list,
				other_list,
				sga_list,
				netincome_list
			)


			#======= Rendering =======

			render :dashboard

		end
  end

	private

	def set_chart(
		category_list, 
		direct_list, 
		overhead_list, 
		sga_list, 
		other_list, 
		netincome_list
	)

		@chart = LazyHighCharts::HighChart.new('graph') do |f|
        f.title(:text => "Financial Performance")
        f.xAxis(:categories => category_list)
        f.series({name: "Direct Cost [USD]", data: direct_list})
				f.series({name: "Overhead Cost [USD]", data: overhead_list})
				f.series({name: "SG&A Cost [USD]", data: sga_list})
				f.series({name: "Other Cost [USD]", data: other_list})
				f.series({name: "Net Income [USD]", data: netincome_list})
        f.yAxis [
          {:title => {:text => "Revenue [USD]", :margin => 70} }
        ]

        f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical')
        f.chart(
					{defaultSeriesType: "column"}
				)
				f.tooltip(
					{
						headerFormat: '<b>{point.x}</b><br/>',
						pointFormat: '{series.name}: {point.y}<br/>Total: {point.stackTotal}'
					}
				)
				f.plot_options(
					{column: 
						{
							stacking: 'normal', 
							depth: 40, 
							dataLabels: {
								enabled: true,
								color: 'white'
							}
						}
					}
				)
		end
	end
end
