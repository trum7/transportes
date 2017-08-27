class SigninController < ApplicationController


  def index
  end

  def login
    puts params
    puts params[:email]
    puts params[:password]

    @user = User.find_by(user: params[:email])
    puts @user
    if @user != nil
      if @user.password == params[:password]
        @user.token = generate_token
        if @user.save!
          puts "si guardo"
          puts @user.token
          session[:aja] = 1
          session[:userToken] = @user.token
          puts "--aca--"
          puts session[:userToken]
          puts "----"
          if @user.level == 1
            puts 1
            redirect_to client_index_path
          elsif @user.level == 4
            puts 2
            redirect_to admin_index_path
          else
            puts 3
          end
        end
      end

    end

  end

  def generate_token
    return SecureRandom.uuid
  end

end
