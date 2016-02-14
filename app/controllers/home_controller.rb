class HomeController < ApplicationController
  def index

		require 'open-uri'
		require 'json'

#		res = open('https://sandbox-quickbooks.api.intuit.com/v3/company/1440855105/reports/BalanceSheet?=Sample%20request%20body%20unavailable&minorversion=4')

		if session[:user_id]

			assignments = Assignment.where(:user_id => session[:user_id])
			@organizations = Organization.where(id:  assignments.map{|t|t.organization_id})

			@chart = LazyHighCharts::HighChart.new('graph') do |f|
 				f.title(:text => "Financial Performance")
				f.xAxis(:categories => ["Intuit", "Banpil Photonics", "Open Source Innovation Labs"])
				f.series(:name => "Revenue", :yAxis => 0, :data => [14119, 5068, 4985])
				f.series(:name => "Net Income", :yAxis => 1, :data => [10210, 4127, 3340])

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
