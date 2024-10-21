class ChangeDatetimeToSeparateDateAndTimeInTableName < ActiveRecord::Migration[7.1]

      def change
        # Suponha que o campo original se chama "data_hora" e a tabela seja "appointments"
        
        # Remover o campo datetime original
        remove_column :visitantes, :data_hora
    
        # Adicionar os novos campos separados
        add_column :visitantes, :data, :date
        add_column :visitantes, :hora, :time
      end
    end
