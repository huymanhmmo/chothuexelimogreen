/** @type {import('tailwindcss').Config} */
export default {
    content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
    theme: {
        extend: {
            colors: {
                primary: '#00A859',
                'primary-dark': '#007A40',
                'primary-light': '#E6F7EE',
                dark: '#0F172A',
                gold: '#F59E0B',
                zalo: '#0068FF',
            },
            fontFamily: {
                sans: ['Be Vietnam Pro', 'sans-serif'],
            },
        },
    },
    plugins: [],
};
