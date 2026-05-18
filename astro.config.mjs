import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
    site: 'https://limogreen.chothuexe.vip',
    integrations: [
        tailwind(),
    ],
    build: {
        format: 'directory',
    },
});
