# My website

This website is built with [Cecil](https://cecil.app), a static site generator.

## Usage

Preview the website locally (with live reload):

```bash
cecil serve
```

Build the website (in the `_site/` directory):

```bash
cecil build
```

Create a new page:

```bash
cecil new:page
```

> [!TIP]
> If you use the Phar file, replace `cecil` with `php cecil.phar`.

## Deployment

The GitHub Actions workflow in `.github/workflows/build-and-deploy.yml` builds and publishes this site to:

<https://kasomosage-blip.github.io/Mon-site-web/>

Push the project to the `Mon-site-web` repository under the `kasomosage-blip` GitHub account, then select **Settings → Pages → Build and deployment → GitHub Actions**. GitHub Pages provides HTTPS for the published site.

## Structure

- `cecil.yml`: configuration
- `pages/`: content, written in Markdown
- `layouts/`: Twig templates (overrides the built-in ones)
- `assets/`: images, styles and scripts, processed by Cecil
- `data/`: data files (YAML, JSON, CSV, etc.)
- `static/`: files copied as is

## Documentation

<https://cecil.app/documentation/>
