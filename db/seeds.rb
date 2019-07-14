# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t = 'addresses'
unless Address.exists?
  path = File.expand_path(sprintf("../data/%s.tsv", t), __FILE__)
  # ActiveRecord::Base.connection.execute(sprintf("TRUNCATE TABLE %s", t))
  # MySQL
  # ActiveRecord::Base.connection.execute("SET character_set_database=utf8;")
  # ActiveRecord::Base.connection.execute(sprintf("LOAD DATA LOCAL INFILE '%s' into table %s", path, t))
  # PostgreSQL
  ActiveRecord::Base.connection.execute(sprintf("copy %s from '%s' ( delimiter '\t', format csv, header true );", t, path))
end
