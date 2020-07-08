# Vital Signs Life Expectancy

This application visualizes data from the Vital Signs life expectancy data set found [here](https://data.bayareametro.gov/dataset/Vital-Signs-Life-Expectancy-by-county/g26a-g4jw).

## Architecture & Dependencies

- Ruby on Rails v. 5
- [WATable](https://wootapa-watable.appspot.com/)
- [Chartkick](https://chartkick.com/)

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)

## Building the application

You need to build the application before you can run it. This only needs to be done once.

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
