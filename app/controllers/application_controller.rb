class ApplicationController < ActionController::API
# need to make this a before action for the users controller

def logged_in?
headers = request.headers["Authorization"]
token = headers.split(" ")[1]
user_id = JWT.decode(token, "LordStrings")[0]["user_id"]
user = User.find(user_id)
if user
  user
else
  user = nil
end
render json: { error: "Please log in" } unless user
end

def jwt_key
  Rails.application.credentials.jwt_key
end
def issue_token(user)
end


end
