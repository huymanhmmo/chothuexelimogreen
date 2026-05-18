import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

import cloudflare from "@astrojs/cloudflare";

export default defineConfig({
    site: 'https://limogreen.chothuexe.vip',

    integrations: [
        tailwind(),
    ],

    build: {
        format: 'directory',
    },

    output: "hybrid",
    adapter: cloudflare()
});