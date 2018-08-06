# ePages
Demo of app [ePages](https://epages-challenge.herokuapp.com/)

## Getting started

After cloning/downloading the app run the following:

```bash
$ yarn install
$ rails db:create db:migrate db:seed
```
## How to use

Shops can be created using existing credentials of ePages shops. After connecting to a shop existing products and sales and delivery details can be viewed.

## Remarks

Predefined seeds exist with a connection to a development shop.

## Tests

Simple tests for the models and controller are included and can be executed using:

```bash
$ rails test test/controllers
```

```bash
$ rails test test/models
```
