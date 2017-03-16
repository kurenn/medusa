![Medusa](medusa.jpg)

## Overview

`medusa` is a command line interface use to stack multiple images from URL's. It uses `imagemagick` to process the images.

## Table of contents

- [Prerquisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

medusa is distributed and run as a Docker image. You don't need to install elixir or anything else but [Docker](https://docker.io).

## Installation

```console
% docker pull icalialabs/medusa:latest
```

## Usage

Before using medusa make sure you have the images url's

1: Standard (Non-development)

```console
docker run --rm \
	icalialabs/medusa:latest \
	mix medusa stack \
	https://s3.amazonaws.com/bucketname/bg.png \
	https://s3.amazonaws.com/bucketname/area-int.png
```
  
The terminal will stream a base64 string into the STDOUT representing the one stacked image.


## Contributing

Please submit all pull requests against a separate branch.

Thanks!

## Copyright

See [LICENSE]()

