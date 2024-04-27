# docker-texlive

Docker image based on Ubuntu with texlive.

## Table of contents

- [What's inside](#whats-inside)
- [Downloading the image](#downloading-the-image)
- [Running the image](#running-the-image)
  - [Interactively](#interactively)
  - [Not interactively](#not-interactively)
- [License](#license)

## What's inside

This Docker image is based on `ubuntu:24:04` and it contains:

- `biber`
- `make`
- `texlive-bibtex-extra`
- `texlive-lang-all`
- `texlive-latex-base`
- `texlive-latex-extra`

Additional packages can be installed with `apt install`.

## Downloading the image

The image is available on GitHub Container Registry.

Use `docker pull` to download the image:
  ```bash
  docker pull ghcr.io/nevermendel/docker-texlive
  ```

## Running the image

You can choose whether you prefer to use the image interactively or not.

### Interactively

To start an interactive instance of the image, set the entry point to `/bin/bash`:

```
docker run -it --entrypoint=/bin/bash -v $(pwd):/usr/app --rm ghcr.io/nevermendel/docker-texlive
```

### Not interactively

To use the image non-interactively, pass the command as an argument to `docker run`:

```
docker run -it -v $(pwd):/usr/app --rm ghcr.io/nevermendel/docker-texlive "pdflatex file.tex"
```

## License

[MIT License](LICENSE)