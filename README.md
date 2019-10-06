# `plantuml-docker`

[Plantuml](https://plantuml.com) in a Docker container.

## Usage

To build an image stored in `image.puml` execute

```sh
cat image.puml | docker run --rm -i fhofherr/plantuml -p -tpng > out.png
```

See the Plantuml [documentation](http://plantuml.com/command-line) for
more information.

## License

Copyright © 2019 Ferdinand Hofherr.

The contents of this repository are distributed under the MIT License.
[Plantuml](https://plantuml.com) itself is distributed under the
[GPL](https://www.gnu.org/licenses/gpl-3.0.html) license.

Execute `docker run --rm fhofherr/plantuml -license` to read the
Plantuml license.

