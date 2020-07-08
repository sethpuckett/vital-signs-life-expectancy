# Vital Signs Life Expectancy

This application visualizes data from the Vital Signs life expectancy data set found [here](https://data.bayareametro.gov/dataset/Vital-Signs-Life-Expectancy-by-county/g26a-g4jw).

## Architecture & Dependencies

- [Ruby on Rails](https://rubyonrails.org/) v. 5
- [WATable](https://wootapa-watable.appspot.com/) (Sortable tables)
- [Chartkick](https://chartkick.com/) (Pretty graphs)
- [Rubocop](https://github.com/rubocop-hq/rubocop) (Linter)
- [Rspec](https://github.com/rspec/rspec-rails) (Tests)

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)

## Building the application

You need to build the application before you can run it. This may take a couple minutes, but it only needs to be done once.

```
docker-compose build
```

## Starting & stopping the application

If you've already completed the build step above the application can be started with:
```
docker-compose up -d
```

When you're finished clean up the containers with:
```
docker-compose down
```
