# About it
This is a simple project to demystify some commonly confusing ruby aspects.

# Setup
If you don't have [Docker](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/) installed, install them. Once you have them installed you won't need to install anything else (Ruby, Ruby gems, RVM, etc).

Before running any code or test, run the project using the Docker image:
```
docker-compose build ruby
```

# Difference between `nil?`, `empty?` and `blank?`
In order to see the difference in a spec, run:
```
docker-compose run ruby rspec
```
These three methods have several differences:

1. `nil?`: Any Object in Ruby will respond to this method. It returns `true` if the object which calls it is an instance of `NilClass`; objects from any other class will return `false`.

2. `empty?`: Some classes like `String`, `Array` and `Hash` implement this method but many others don't. Therefore, its behave depends on how it's implement by each class. It returns `true` for `''`, `[]` and `{}` for example and false for `' '`, `[ nil ]` and `{ a: nil }`. As it is not implement for every class, it will return `NoMethodError` for these cases.

3. `blank?`: This is not a Ruby native method. This is a Ruby on Rails method instead and can be used by Ruby apps on requiring the `active_record` gem. It returns true for anything that is `nil`, `false` or `empty`. Besides that, it is implemented in a way that any Object from any Class respond to it.

The following table shows some common examples:

|Expression|nil?  |empty?                  |blank?
|----------|------|------------------------|------
|nil       |true  |Exception: NoMethodError|true
|false     |false |Exception: NoMethodError|true
|true      |false |Exception: NoMethodError|false
|0         |false |Exception: NoMethodError|false
|1         |false |Exception: NoMethodError|false
|''        |false |true                    |true
|' '       |false |false                   |true
|[]        |false |true                    |true
|[ nil ]   |false |false                   |false
|{}        |false |true                    |true
{ a:nil }  |false |false                   |false
