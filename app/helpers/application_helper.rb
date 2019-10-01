module ApplicationHelper

    def data_br(data_us)
        # data_us.strftime("%d/%m/%Y")
        # data_us.strftime("%d/%m/%y, %H:%M:%S")
        # data_us.strftime("%T")
        # data_us.strftime("%H%M")
        # t.strftime("Printed on %m/%d/%Y")
        t = Time.new()
        t.strftime("%d/%m/%y, %H:%M:%S")
    end

    def nome_aplicacao
      "CRYPTO WALLET APP"
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        elsif Rails.env.test?
            "Teste"
        end
    end
end
