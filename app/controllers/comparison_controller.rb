class ComparisonController < ApplicationController
  def index

		#======= Prepare Variable List =======

		target = []
		public_list = []
		private_list = []


		#======= Prepare comp_chart =======

		target = [[50,50]]
		public_list = [[35,60],[45,55]]
		private_list = [[60,35], [80, 70]]

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
				align: 'right',
				verticalAlign: 'middle'
			)
			f.series({name: 'Target', data: target})
			f.series({name: 'Public Companies', data: public_list})
			f.series({name: 'Private Companies', data: private_list})
		end
	end
end
