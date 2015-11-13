# encoding: utf-8

Given (/^inicia la aplicacion$/) do
    element_exists("UILayoutContainerView")
end

When(/^se inicializa la ventana de "(.*?)"$/) do |text|
    verifyActivityWithName(text)
end

Then(/^presiono la imagen "(.*?)"$/) do |id|
    touchControlWithId("UIImageView",id)
end

Then(/^presiono el boton "(.*?)"$/) do |id|
    touchControlWithId("UIButton",id)
end

Then(/^observo el texto "(.*?)"$/) do |text|
    verifyElementWithText(text,"UILabel")
end

Then(/^observo la imagen "(.*?)"$/) do |id|
    verifyElementWithId(id,"UIImageView")
end


Then(/^observo el campo de texto "(.*?)"$/) do |id|
    verifyElementWithId(id,"*UITextField")
end


Then(/^ingresar el texto "(.*?)" en el campo de texto "(.*?)"$/) do |text, id|
    enterTextToControlWithId(text,"UITextField" ,id)
end

Then(/^se oculta el teclado$/) do
    hide_soft_keyboard
end


Then(/^observo el boton con el texto "(.*?)"$/) do |text|
    verifyElementWithText(text,"UIButton")
end






