class RelationshipsController < ApplicationController
#フォローするとき
  def create
    following=current_user.relationships.build(follower_id: params[:user_id])
    following.save
    redirect_to request.referer
  end
  
#フォロー外すとき  
  def destroy
    following=current_user.relationships.find_by(follower_id: params[:user_id])
    following.destroy
    redirect_to request.referer
  end
  

end
