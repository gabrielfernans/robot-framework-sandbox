*** Settings ***
Documentation       File for searching and definition of Variables

Library             SeleniumLibrary


*** Variables ***
# AUTHPAGE

# QUERIES

# REGISTER
${RegisterButtonQuery}              //button[contains(@class, 'register-button')]
${LoginButtonQuery}                 //button[contains(@class, 'login-button')]

${RegisterNameQuery}                //div[@id='register']//input[@id='name']
${RegisterEmailQuery}               //div[@id='register']//input[@id='email']
${RegisterTelephoneQuery}           //div[@id='register']//input[@id='telephone']
${RegisterSexQuery}                 //div[@id='register']//input[@type='radio' and @value='M']
${RegisterPasswordQuery}            //div[@id='register']//input[@id='password']
${RegisterPasswordConfirmQuery}     //div[@id='register']//input[@id='confirmPassowrd']
${RegisterConfirmButtonQuery}       //button[contains(@class, 'register-confirm-button')]

# LOGIN
${LoginEmailQuery}                  //div[@id='login']//input[@id='email']
${LoginPasswordQuery}               //div[@id='login']//input[@id='password']

${LoginConfirmButtonQuery}          //button[contains(@class, 'login-confirm-button')]

# VALUES
${WelcomeMessage}                   Compartilhe viagens, economize e proteja o planeta
${RegisterSuccessMessage}           Conta criada com sucesso!
${DashboardText}                    Ver perfil

${RegisterNameValue}                John Doe
${RegisterEmailValue}               johndoetemp015@ccc.ufcg.edu.br
${RegisterTelephoneValue}           83986000000
${RegisterPasswordValue}            pass123
