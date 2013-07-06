class PageController < ApplicationController
  def scoreboard
    @tournament = Tournament.find_by_tkey(params[:id])
    @scores = Score.where( "tkey=?", params[:id] )
    
    @score_hash = Hash.new
    
    @scores.each do |score|
        
        if @score_hash.has_key?(score.name)
            @score_hash[score.name] = @score_hash[score.name] + score.score.to_i
        else
            @score_hash[score.name] = score.score.to_i
        end
        
        Rails.logger.debug(@score_hash.inspect )

    end
    
    
    
  end

  def home
        @tournament = Tournament.new
  end

  def scoreupdate
  
    @game = Game.new({:tkey => params[:id], :ip_ => request.remote_ip} )
    @game.scores.build({:name => params[:p1], :score =>params[:s1], :tkey => params[:id]})
    @game.scores.build({:name => params[:p2], :score =>params[:s2], :tkey => params[:id]})    
    @game.save
    redirect_to scoreboard_path(params[:id])
  end
  
  def games_list
    Rails.logger.debug( params.inspect + 'klfjldsj;lfkjadlfjldj')
    @games = Game.where( "tkey=?", params[:id] )
  end
  
  def remove_game
    
      game = Game.find(params[:id])      
      game.scores.each do |score|
        score.delete
      end
      game.delete  
      redirect_to games_list_path(params[:key])
  end
end
