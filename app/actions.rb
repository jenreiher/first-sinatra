# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

post '/messages' do
  @message = Message.new(
    url: params[:url],
    content: params[:content],
    author: params[:author]
    )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end

get '/messages/new' do
  erb :'messages/new'
end

get '/messages/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'
end

get '/messages/author/:author' do
  @messages = Message.where('author = ?', params[:author])
  erb :'messages/author'
end