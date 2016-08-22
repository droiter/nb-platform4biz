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
		revenue_list				= []
		direct_list					= []
		overhead_list				= []
		sga_list						= []
		other_list					= []
		netincome_list			= []
		count	= 0


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

				revenue = 4000 - count*600
				direct = 1000 - count*150
				overhead = 800 - count*80
				sga = 600 - count*40
				other = 300 - count*50

				netincome = revenue - direct - overhead - sga - other

				revenue_list.push(revenue)
				direct_list.push(direct)
				overhead_list.push(overhead)
				sga_list.push(sga)
				other_list.push(other)
				netincome_list.push(netincome)
				count += 1
			end
			

			#======= Prepare Revenue Chart =======

			set_revenue_chart(
				category_list,
				revenue_list,
				netincome_list
			)

			#======= Prepare Cost Chart =======

			set_cost_chart(
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

	def set_revenue_chart(
		category_list,
		revenue_list,
		netincome_list
	)

		@revenue_chart = LazyHighCharts::HighChart.new('graph') do |f|
			f.chart(type: 'column')
			f.title(text: 'Comparison in Revenue and Net Income`')
			f.subtitle(text: 'Period: xxx')
			f.xAxis(categories: category_list)
			f.yAxis([
				{title: {text: 'Revenue [USD]'}},
				{title: {text: 'Net Income [USD]'}, opposite: true}
			])
      f.legend(
				verticalAlign: 'bottom', 
				layout: 'vertical'
			)
			f.series(
				name: 'Revenue [USD]', 
				yAxis: 0, 
				data: revenue_list
			)
			f.series(
				name: 'Net Income [USD]', 
				yAxis: 1, 
				data: netincome_list
			)
		end
	end

	def set_cost_chart(
		category_list, 
		direct_list, 
		overhead_list, 
		sga_list, 
		other_list, 
		netincome_list
	)

		@cost_chart = LazyHighCharts::HighChart.new('graph') do |f|
        f.chart({defaultSeriesType: "column"})
        f.title(text: "Cost Structure")
				f.subtitle(text: 'Period: xxx')
        f.xAxis(categories: category_list)
        f.yAxis([
          {title: {text: "Percentage [%]"} }
        ])
        f.legend(
					verticalAlign: 'bottom', 
					layout: 'vertical'
				)
        f.series({name: "Direct Cost [USD]", data: direct_list})
				f.series({name: "Overhead Cost [USD]", data: overhead_list})
				f.series({name: "SG&A Cost [USD]", data: sga_list})
				f.series({name: "Other Cost [USD]", data: other_list})
				f.series({name: "Net Income [USD]", data: netincome_list})
				f.tooltip(
					{
						headerFormat: '<b>{point.x}</b><br/>',
						pointFormat: '{series.name}: {point.y}<br/>Total: {point.stackTotal}'
					}
				)
				f.plot_options(
					{column: 
						{
							stacking: 'percent', 
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
