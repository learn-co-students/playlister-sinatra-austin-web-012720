class GenresController < ApplicationController

    get "/genres" do
      @genres = Genre.all
      erb :'genres/index'
    end

    get '/genres/new' do
      erb :'genres/new'
    end

    post '/genres' do
      @genres = Genre.create(params)
      redirect to "genres/#{@genres.id}"
    end

    get '/genres/:id' do
      @genre = Genre.find(params[:id])
      erb :'genres/show'
    end

end
