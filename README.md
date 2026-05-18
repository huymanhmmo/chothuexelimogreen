# Cho Thuê Xe Limo Green - chothuexe.vip

Website cho thuê xe tự lái VinFast Limo Green 7 chỗ tại Hà Nội.

## Tech Stack

- **Framework:** [Astro](https://astro.build/) v4
- **Styling:** [TailwindCSS](https://tailwindcss.com/) v3
- **Deploy:** Cloudflare Pages (Static)

## Development

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
```

Output: `dist/` (static HTML)

## Deploy on Cloudflare Pages

1. Connect repo to Cloudflare Pages
2. Build command: `npm run build`
3. Build output directory: `dist`
4. Node.js version: `18` (or later)

## Project Structure

```
src/
├── components/     # Header, Footer, SEOHead
├── content/blog/   # Blog posts (Markdown)
├── layouts/        # BaseLayout
├── pages/          # Route pages
└── styles/         # Global CSS
public/
├── images/         # Static images
├── robots.txt
└── sitemap.xml
```

## License

All rights reserved © 2026 Limo Green Hà Nội
