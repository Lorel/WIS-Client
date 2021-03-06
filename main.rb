load 'config/sinatra.rb'

before do
  @pages = %w"ip locations connections stationboard weather stations weathers future_weathers"
  @author = 'IIUN'
  @year = 2016
end

get '/ip' do
  @page = 'ip'
  slim :index
end

get '/locations' do
  @page = 'locations'
  slim :index
end

get '/connections' do
  @page = 'connections'
  slim :index
end

get '/stationboard' do
  @page = 'stationboard'
  slim :index
end

get '/weather' do
  @page = 'weather'
  slim :index
end

get '/stations' do
  @page = 'stations'
  slim :index
end

get '/weathers' do
  @page = 'weathers'
  slim :index
end

get '/future_weathers' do
  @page = 'future_weathers'
  slim :index
end
