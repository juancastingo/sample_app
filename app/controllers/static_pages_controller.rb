class StaticPagesController < ApplicationController
  def home
    # system("    curl -s --user 'api:key-401c0b6ce947507697901c3d460b2c99' \
    # https://api.mailgun.net/v3/sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org/messages \
    # -F from='PUTOOOO <postmaster@sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org>' \
    # -F to='juanca <juanxstingo@gmail.com>' \
    # -F subject='Hello juanca' \
    # -F text='Congratulations juanca, you just sent an email with Mailgun!  You are truly awesome!' ")

  end

  def help
    system("    curl -s --user 'api:key-401c0b6ce947507697901c3d460b2c99' \
    https://api.mailgun.net/v3/sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org/messages \
    -F from='PUTOOOO <postmaster@sandboxd49dad5e176b4884aede3fdb9b1bac75.mailgun.org>' \
    -F to='juanca <juanxstingo@gmail.com>' \
    -F subject='Hello juanca' \
    -F text='Congratulations juanca, you just sent an email with Mailgun!  You are truly awesome!' ")
  end

  def about
  end

  def contact
  end
  
end
