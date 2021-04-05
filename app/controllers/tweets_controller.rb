class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
      flash[:notice] = "New Tweet was created."
      redirect_to tweets_index_path
    else
      flash[:notice] = "Something went wrong."
      redirect_to new_tweets_path
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
