# Bareos with Docker Compose

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
3. [Usage](#usage)
4. [Reference](#reference)
5. [Development](#development)
6. [Contributors](#contributors)

## Description

Docker-compose setup for starting [Bareos](https://www.bareos.com/) with [Træfik](https://traefik.io/).

The [main Compose file](https://github.com/solution-libre/docker-bareos/blob/main/barcus/docker-compose-alpine-pgsql.yml),
which is present in the `barcus` folder, is a copy of the [Barcus](https://github.com/barcus) work that maintains
great [Docker images of Baroes](https://github.com/barcus/bareos).

## Setup

```sh
cd /opt
git clone https://github.com/solution-libre/docker-bareos.git bareos
cd bareos
cp -r .secrets.dist .secrets
```

Declare environment variables or copy the `.env.dist` to `.env` and adjust its values.

Change the value of the secrets in the `.secrets` folder.

Register a domain like 'bareos.domain.tld'.

## Usage

```sh
cd /opt/bareos
docker-compose up -d
```

## Reference

### Environment variables

#### `HOSTNAME`

The Bareos hostname. Default value: 'bareos.domain.tld'

## Development

[Solution Libre](https://www.solution-libre.fr)'s repositories are open projects, and community contributions are essential for keeping them great.

[Fork this repo on GitHub](https://github.com/solution-libre/docker-bareos/fork)

## Contributors

The list of contributors can be found at: <https://github.com/solution-libre/docker-bareos/graphs/contributors>
