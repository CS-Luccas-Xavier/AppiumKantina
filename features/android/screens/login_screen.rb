class LoginScreen < BaseScreen
  # The screen identificator
  trait(:trait)                 { "'#{button_google_sign_in}'" }
# Declare all the elements of this screen
  #element(:layout_name)         { pending 'Insert button identificator' }
  #element(:button)              { pending 'Insert button identificator' }


  def wait_login_button
    wait_element("button_google_sign_in")
  end

  def tap_login_button
    touch_element("button_google_sign_in")
  end

  def tap_valid_email
    touch_element("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView[1]", :xpath)
  end

  def tap_invalid_email
    touch_element("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView[2]", :xpath)
  end

  def check_home_page
    wait_element("floating_action_button_purchase")
  end

  def check_invalid_email
    texto = xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v7.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[2]").text
    texto == "Please sign in using a Concrete account."
  end
end
