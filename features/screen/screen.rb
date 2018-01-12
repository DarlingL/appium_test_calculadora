
class ScreenCadastroSteps

    def initialize
    @nota1 = 'et_nota1'
    @nota2 = 'et_nota2'
    @nota3 = 'et_nota3'
    @confi = 'button'
    @resul = 'tv_resultado'
    @clear = 'com.android.systemui:id/dismiss_text'
    @title = 'MinhaCalculadora'
    end

    #preencher notas no teste de Esquema de Cenário
    def preencher(string, string2, string3)
        find_element(id: @nota1).send_keys(string)
        find_element(id: @nota2).send_keys(string2)
        find_element(id: @nota3).send_keys(string3)
        @driver.back
    end

    #preencher notas no teste do Aprovado
    def keyboard
        3.times do
        @driver.press_keycode(152)
        @driver.press_keycode(66)
        end
        @driver.back
    end

    #preencher notas no teste do push
    def key
        2.times do
            @driver.press_keycode(149)
            @driver.press_keycode(66)
        end  
        @driver.press_keycode(149)
        @driver.back     
    end

    #preencher notas no teste do background
    def keyback
        2.times do
            @driver.press_keycode(146)
            @driver.press_keycode(66)
        end 
        @driver.press_keycode(146)
    end

    #metodo para sair do aplicativo
    def home
        @driver.press_keycode(3)
    end

    #metodo para voltar ao aplicativo
    def backapp
        @driver.press_keycode(187) 
        find_element(:xpath, "//*[@text='#{@title}']").click
        @driver.press_keycode(66)
        @driver.back
    end
    
    #metodo para visulizar e fechar notificação
    def viewpush
        @driver.open_notifications()
        find_element(id: @clear).click   
    end

    #Scrolar para cima
    def swipeup
        scroll_to_exact('Nota 1:')
    end

    #Scrolar para baixo
    def swipedown
        scroll_to_exact('CALCULAR')
        swipe(start_x: 0.2, start_y: 0.2, offset_x:0.1,  offset_y: 4.5, duration: 600).perform       
    end 

    #Efetuar o calculo
    def calcular
        find_element(id: @confi).click
    end

    #Verificar o resultado
    def resultado(msg)
        find_element(:xpath, "//*[@text='#{msg}']").displayed?
    end
end




