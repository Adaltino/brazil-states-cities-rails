# frozen_string_literal: true

parana = State.create(description: 'Paraná')
santa_catarina = State.create(description: 'Santa Catarina')
rio_grande_do_sul = State.create(description: 'Rio Grande do Sul')

City.create(description: 'Curitiba', state: parana)
City.create(description: 'Londrina', state: parana)
City.create(description: 'Maringá', state: parana)
City.create(description: 'Florianópolis', state: santa_catarina)
City.create(description: 'Blumenau', state: santa_catarina)
City.create(description: 'Joinville', state: santa_catarina)
City.create(description: 'Porto Alegre', state: rio_grande_do_sul)
City.create(description: 'Caxias do Sul', state: rio_grande_do_sul)
City.create(description: 'Pelotas', state: rio_grande_do_sul)
