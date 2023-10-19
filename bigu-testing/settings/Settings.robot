*** Settings ***
Documentation       File for definition of Global settings

Library             SeleniumLibrary


*** Variables ***
# SETTINGS
${BASE_URL}             localhost:3000
${BROWSER}              chrome
${DELAY}                3

# PAGES
${AUTH_PAGE}            http://${BASE_URL}/
${DASHBOARD_PAGE}       http://${BASE_URL}/dashboard

# ACCOUNT
${VALID_USER}           johndoe@ccc.ufcg.edu.br
${VALID_PASSWORD}       pass123
