class TimeseriesController < ApplicationController
  def index

		#======= Prepare Variable List =======

		time_list = []
		dlsi_list = []
		gmi_list = []
		aqi_list = []


		#======= Prepare time_chart =======

		time_list = (2001..2016).to_a
		dlsi_list = [1,2,3,3,2,3,8,4,2,5,3,6,3,4,6,3]
		gmi_list = [2,2,2,3,4,2,3,6,4,2,3,4,6,4,3,5]
		aqi_list = [3,2,4,5,3,4,6,3,4,5,3,4,5,7,4,6]

		set_time_chart(
			time_list,
			dlsi_list,
			gmi_list,
			aqi_list
		)
  end


	private

	def set_time_chart(
		time_list,
		dlsi_list,
		gmi_list,
		aqi_list
	)

		@time_chart = LazyHighCharts::HighChart.new('graph') do |f|

			f.title(text: 'Time Series Analysis')
			f.xAxis(categories: time_list)
			f.yAxis(title: {text: 'Financial Ratio'})
			f.legend(
				layout: 'vertical',
				verticalAlign: 'bottom'
			)
			f.series(
				name: 'DLSI',
				data: dlsi_list
			)
			f.series(
				name: 'GMI',
				data: gmi_list
			)
			f.series(
				name: 'AQI',
				data: aqi_list
			)
		end
	end
end
