# beanstalkd-console

Run the [admin console for the Beanstalk](https://github.com/ptrofimov/beanstalk_console) queue server on Docker

## Usage

```sh
docker run -d -p 11300:11300 --name beanstalkd schickling/beanstalkd
docker run -d -p 2080:2080 --link beanstalkd:beanstalkd -e BEANSTALK_SERVERS=beanstalkd:11300 sitecrafting/beanstalkd-console
```

Then go to [localhost:2080](http://localhost:2080), where a beanstlkd-console admin UI should be running and watching on 11300.

## Authentication (Basic Auth)

For using basic auth in console should add these environment variables:

`AUTH=enable`
`AUTH_USERNAME=username` (default is `admin`)
`AUTH_PASSWORD=password` (default is `password`)

To run console with auth use this command:

```sh
docker run -d -p 2080:2080 --link beanstalkd:beanstalkd -e BEANSTALK_SERVERS=beanstalkd:11300 -e AUTH=enable -e AUTH_USERNAME=admin -e AUTH_PASSWORD=password schickling/beanstalkd-console
```

## License and Credit

MIT License.

Copyright 2017 Johannes Schickling and SiteCrafting, Inc.

Based on Johannes Schickling's [beanstalkd-console Docker setup](https://github.com/schickling/dockerfiles/tree/master/beanstalkd-console).
