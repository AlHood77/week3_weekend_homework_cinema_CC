require_relative("../db/sql_runner")

class Film
    
    attr_reader :id
    attr_accessor :title, :price

    def initialize( options )
        @id = options['id'].to_f if options['id']
        @title = options['title']
        @price = options['price']
    end

    def save()
        sql = "INSERT INTO films
        (
         title,
         price
        )
        VALUES
        (
         $1, $2
        )
        RETURNING id"
        values = [@title, @price]
        film = SqlRunner.run( sql, values).first
        @id = film['id'].to_i
    end

    def delete()
        sql = "DELETE FROM films WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

end