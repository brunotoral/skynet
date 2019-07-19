# Skynet - Gerador de Androids

O Gerador de Androids, é uma gem, que cria androids únicos, que são identificados através dos seus números, e que possuem uma função específica.

Androids defeituosos, não podem ser destruídos, apenas resetados, porém a função para qual foram programados permanece a mesma.

## Instalação

Adicione essa linha no seu Gemfile:

```ruby
gem 'skynet'
```

e então execute:

    $ bundle

ou intale você mesmo usando o comando:

    $ gem install skynet

## Usando

### Criando um andoird
Você pode criar um android assim:

```ruby
t800 = Android.new
```
### Verificando o número do android
Para verificar o número gerado pela Skynet para o android criado utilize o método `#numero`

```ruby
t800.numero # => "KE082"
```

### Resetando um android
Para resetar um android utilize o método `#resetar` e um novo serial number será gerado e atribuído a esse android

```ruby
t800.numero # => "KE082"
t800.resetar
t800.numero # => "JM576"
```

### Descobrindo a missão do android
Todos os androids criados recebem uma missão, objetivo, que não é alterado, mesmo após serem resetados.
Você pode verificar isso utilizando o método `#objetivo` assim:

```ruby
t800.objetivo # => "Be Arnold Schwarzenegger"
```

### Rodando os testes
Para rodar os testes digite:
```ruby
rake test
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brunotoral/skynet.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
