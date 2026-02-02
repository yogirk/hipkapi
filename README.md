# All Roads Lead to Jerusalem

**Decolonizing social sciences** — posts and articles about India, her culture and traditions.

Live site: <https://yogirk.github.io/hipkapi/>

## About

This is the source repository for *All Roads Lead to Jerusalem*, an academic blog exploring themes of colonialism, Indian traditions, secularism, and the philosophy of social sciences. The site draws heavily on the research programme of S.N. Balagangadhara. 

The site contains 360+ articles organized across topics including colonial consciousness, caste, secularism, Indian traditions, symbolism, and more.

## Technical Stack

- **Static site generator:** [Hugo](https://gohugo.io/) (extended, v0.154.1)
- **Theme:** [Explore](https://github.com/yogirk/explore) (included as a git submodule)
- **Hosting:** GitHub Pages via GitHub Actions
- **Search:** Client-side fuzzy search powered by [Fuse.js](https://www.fusejs.io/)

## Prerequisites

- [Hugo Extended](https://gohugo.io/installation/) v0.154.1 or later
- Git (for submodule checkout)

## Getting Started

Clone the repository with its theme submodule:

```bash
git clone --recurse-submodules https://github.com/yogirk/hipkapi.git
cd hipkapi
```

If you already cloned without `--recurse-submodules`:

```bash
git submodule update --init --recursive
```

## Local Development

Start the Hugo development server:

```bash
hugo server -D
```

The site will be available at `http://localhost:1313/hipkapi/`. The `-D` flag includes draft posts.

## Building

Generate the production site:

```bash
hugo --gc --minify
```

Output is written to `public/`.

## Deployment

The site deploys automatically to GitHub Pages when changes are pushed to the `main` branch. The workflow is defined in `.github/workflows/hugo.yml` and handles:

1. Installing Hugo Extended
2. Checking out the theme submodule
3. Building with `--gc --minify`
4. Deploying to GitHub Pages

No manual deployment steps are needed.

## Creating a New Post

```bash
hugo new posts/my-new-post.md
```

This generates a post from the archetype template with front matter for title, date, categories, tags, and table of contents. Edit the file in `content/posts/` and set `draft: false` when ready to publish.

## Project Structure

```
.
├── archetypes/          # Templates for new content
├── content/
│   ├── posts/           # Blog posts (360+)
│   ├── pages/           # Static pages (About, Books, Contact, etc.)
│   └── search/          # Search page
├── layouts/             # Custom layout overrides
│   ├── _default/_markup # Custom link rendering
│   └── partials/widgets # Custom sidebar widgets
├── static/              # Static assets (logo, uploads)
├── themes/explore/      # Hugo theme (git submodule)
└── config.toml          # Site configuration
```

## Configuration

Site configuration lives in `config.toml`. Key settings include:

- **Navigation menu** with weighted ordering
- **Sidebar widgets:** recent posts, categories, tags
- **Related content** matching on tags (weight 100), categories (weight 80), and date (weight 10)
- **Typography:** Google Sans Flex body font, 75ch content width, justified text
- **Dark mode** with automatic detection

### Text Alignment

All posts use justified text alignment by default. To disable justification on a specific post, add `justify: false` to its front matter:

```yaml
---
title: My Post
justify: false
---
```

This is controlled by the layout override in `layouts/_default/single.html`.

## About

See the site's [About page](https://yogirk.github.io/hipkapi/pages/about/) for more information.
