# Speedtest in Docker
This docker image runs [Speedtest.net CLI](https://www.speedtest.net/apps/cli) in a Docker container.

## How to run
`docker run -t --rm jstastny/speedtest`

Passing the `-t` allocates a pseudo-tty, which is useful to see the measurement progress bar.

## Speedtest terms

By using this, you agree with the following Speedtest terms and other agreements:
- 	https://www.speedtest.net/about/eula
-	https://www.speedtest.net/about/terms
-	https://www.speedtest.net/about/privacy

This is because the docker runs the `speedtest` program with `--accept-license` and  `--accept-gdpr` switches.

