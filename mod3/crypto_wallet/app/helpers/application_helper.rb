module ApplicationHelper
    def locale
        I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"
    end
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def rails_ambient
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end

    def toggle_chart_type(type)
        return 'table' if type.to_s == 'chart'

        'chart'
    end
end
