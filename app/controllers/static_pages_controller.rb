class StaticPagesController < ApplicationController
  def home


    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])

    end
    @users_in_db = User.where(activated: true).count

    my_log "PRUEBA"

    # system("    curl -s --user 'api:key-401c0b6ce947507697901c3d460b2c99' \
    # https://api.mailgun.net/v3/sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org/messages \
    # -F from='PUTOOOO <postmaster@sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org>' \
    # -F to='juanca <juanxstingo@gmail.com>' \
    # -F subject='Hello juanca' \
    # -F text='Congratulations juanca, you just sent an email with Mailgun!  You are truly awesome!' ")

    #Rails.logger.debug "\033[1;34;40m[DEBUG] Juanca-DEBUG: \033[0m " + output
  end

  def help

    texto = Time.zone.now
    my_log texto.to_s

    # output = `curl -s --user 'api:key-401c0b6ce947507697901c3d460b2c99' \
    #  https://api.mailgun.net/v3/sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org/messages \
    #  -F from='Rama <postmaster@sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org>' \
    #  -F to='juanca <juanxstingo@gmail.com>' \
    #  -F subject='asunto' \
    #  -F text='cuerpo del mensaje'`

    #Rails.logger.debug "\033[1;34;40m[DEBUG] Juanca-DEBUG: \033[0m " + output

    # system("    curl -s --user 'api:key-401c0b6ce947507697901c3d460b2c99' \
    # https://api.mailgun.net/v3/sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org/messages \
    # -F from='PUTOOOO <postmaster@sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org>' \
    # -F to='juanca <juanxstingo@gmail.com>' \
    # -F subject='Hello juanca' \
    # -F text='Congratulations juanca, you just sent an email with Mailgun!  You are truly awesome!' ")
  end

  def about
  end

  def contact
  end

end
