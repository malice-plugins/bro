malice-bro
==========

[![Circle CI](https://circleci.com/gh/maliceio/malice-bro.png?style=shield)](https://circleci.com/gh/maliceio/malice-bro) [![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org) [![Docker Stars](https://img.shields.io/docker/stars/malice/bro.svg)](https://hub.docker.com/r/malice/bro/) [![Docker Pulls](https://img.shields.io/docker/pulls/malice/bro.svg)](https://hub.docker.com/r/malice/bro/) [![Docker Image](https://img.shields.io/badge/docker image-171 MB-blue.svg)](https://hub.docker.com/r/malice/bro/)

**Malice Bro Plugin** - Scan PCAP or bind to interface and scan files off the wire.

### Dependencies

-	[blacktop/bro](https://hub.docker.com/r/blacktop/bro/)

### Installation

1.	Install [Docker](https://www.docker.io/).
2.	Download [trusted build](https://hub.docker.com/r/malice/bro/) from public [DockerHub](https://hub.docker.com): `docker pull malice/bro`

### Usage

```
docker run --rm malice/bro
```

#### Or link your own malware folder:

```bash
$ docker run --rm -v /path/to/malware:/malware:ro malice/bro PCAP

```

Sample Output
-------------

### JSON:

```json
{
  "bro": {
  }
}
```

### STDOUT (Markdown Table):

---

#### Bro

---

Documentation
-------------

### Issues

Find a bug? Want more features? Find something missing in the documentation? Let me know! Please don't hesitate to [file an issue](https://github.com/maliceio/malice-bro/issues/new).

### CHANGELOG

See [`CHANGELOG.md`](https://github.com/maliceio/malice-bro/blob/master/CHANGELOG.md)

### Contributing

[See all contributors on GitHub](https://github.com/maliceio/malice-bro/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/maliceio/malice-bro/blob/master/CHANGELOG.md) and submit a [Pull Request on GitHub](https://help.github.com/articles/using-pull-requests/).

### License

MIT Copyright (c) 2016-2017 **blacktop**
