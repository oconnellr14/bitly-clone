get '/' do

    Url.all.each do |x|
        p x
    end
    erb :"static/index"
end


get "/user_sign_up" do
    erb :"static/user_sign_up"
end

get "/about" do
    erb :"static/about"
end

post '/link_generate' do
    p params
    url = Url.new(original_url: params[:long_url])
    url.shortened_url = url.compressor #sdkfjwle
        if url.save
            redirect "/"
        else
            render '/about'
        end
end


