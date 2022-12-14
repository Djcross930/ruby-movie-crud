class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.name = params[:name] || movie.name
    movie.year = params[:year] || movie.year
    movie.save
    render json: movie.as_json
  end

  def create
    movie = Movie.new
    movie.name = params[:name]
    movie.year = params[:year]
    movie.save
    render json: movie.as_json
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie destroyed"}
  end

end
