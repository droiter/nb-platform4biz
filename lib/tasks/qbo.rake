namespace :qbo do

	desc "get finantial data"
	task :get_data do

		d = Date.today
		message = d.strftime("%Y/%m/%d %H:%M:%S")
		print ( "%s	INFO: start get_data\n" % d.strftime("%Y/%m/%d %H:%M:%S"))

    begin

      res = open('https://sandbox-quickbooks.api.intuit.com/v3/company/1440855105/reports/ProfitAndLoss?minorversion=4',
        'Accept'  => 'application/json',
        'Host'  => 'sandbox-quickbooks.api.intuit.com',
        'Authorization' => 'OAuth oauth_token="qyprdv2szDj7wEOYlsko7n6Q7UxEgnrRyNqq8t8l9yP7oUcB",oauth_nonce="44b4226f-db90-4d9a-b0b5-4aedd1841b9a",oauth_consumer_key="qyprdE7ZtFZBzQcOkjsW8k6cDU1leA",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1455486018",oauth_version="1.0",oauth_signature="Mlm%2F9Aveie0BIet3rcLDKPY3uMY%3D"')


      result = ActiveSupport::JSON.decode res.read

    rescue => error
    end

		print res
		print ( "%s	INFO: end get_data\n" % d.strftime("%Y/%m/%d %H:%M:%S"))
	end
end
