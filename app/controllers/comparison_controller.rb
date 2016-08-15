class ComparisonController < ApplicationController
  def index

		#======= Prepare Variable List =======

		target = []
		public_list = []
		private_list = []


		#======= Prepare comp_chart =======

		target = [[50,50]]
		public_list = [[35,60],[45,55], [47, 63]]
		private_list = [[60,35], [80, 70], [45, 42]]

		set_comp_chart(
			target,
			public_list,
			private_list
		)
	end

	private

	def set_comp_chart(
		target,
		public_list,
		private_list
	)

		@comp_chart = LazyHighCharts::HighChart.new('graph') do |f|
			f.chart({type: 'scatter', zoomType: 'xy'})
			f.title(text: 'Comaprison Analysis')
			f.xAxis(
				title: {enabled: true, text: 'EPS'},
				startOnTick: true,
				endOnTick: true,
				showLastLabel: true
			)
			f.yAxis(title: {text: 'ROE'})
			f.legend(
				layout: 'vertical',
				verticalAlign: 'bottom'
			)
			f.plotOptions(
				scatter: {
					marker: {radius: 5}
				}
			)
			f.series(
				name: 'Target', 
				color: 'rgb(255, 0, 0)',
				data: target
			)
			f.series(
				name: 'Public Companies', 
				color: 'rgba(0,255,0,.5)',
				data: public_list
			)
			f.series(
				name: 'Private Companies', 
				color: 'rgba(0,0, 255, .5)',
				data: private_list
			)
		end
	end
end
