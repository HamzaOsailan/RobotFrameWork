#*** Variables ***
#${EMAIL_LOCATOR}              xpath=//android.widget.EditText[@content-desc="input-email"]
#${PASSWORD_LOCATOR}           xpath=//android.widget.EditText[@content-desc="input-password"]
#${LOGIN_BUTTON}               //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup
#${LOGIN_LOCATOR}              //android.widget.TextView[@text="Login"]

*** Variables ***
# Navs
${HomeNavs}        xpath=//android.widget.TextView[@text="Login"]
${WebviewNavs}     xpath=//android.widget.TextView[@text="Login"]
${LoginNavs}       xpath=//android.widget.TextView[@text="Login"]
${SignUpNavs}      xpath=//android.widget.TextView[@text="Sign up"]
${FormsNavs}       xpath=//android.widget.TextView[@text="Forms"]
${SwipeNav}        xpath=//android.widget.TextView[@text="Swipe"]
${DragNavs}        xpath=//android.widget.TextView[@text="Sign up"]

# Locators for Login
${email}            xpath=//android.widget.EditText[@content-desc="input-email"]
${password}         xpath=//android.widget.EditText[@content-desc="input-password"]
${LOGIN_BUTTON}    //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup

# Locators for Registration
${ConfirmPassword}  xpath=//android.widget.EditText[@content-desc="input-repeat-password"]
${SignUpButton}     xpath=//android.view.ViewGroup[@content-desc="button-SIGN UP"]/android.view.ViewGroup


# Locators for Forms
${Inputfield}              xpath=//android.widget.EditText[@content-desc="text-input"]
${youtyped}                xpath=//android.widget.TextView[@text="You have typed:"]
${SwitchButton}            xpath=//android.widget.Switch[@content-desc="switch"]
${SwitchButtonONoRoFF}     xpath=//android.widget.TextView[@content-desc="switch-text"]
${Dropdown}                xpath=//android.widget.EditText[@resource-id="text_input"]
${ActiveButton}            xpath=//android.view.ViewGroup[@content-desc="button-Active"]/android.view.ViewGroup



#${SwipeToLastElement}     xpath=//android.widget.TextView[@text="Swipe"]
