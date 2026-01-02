const theme = require('./themes/blowfish/tailwind.config.js');

module.exports = {
  ...theme,
  content: [
    './content/**/*.md',
    './themes/blowfish/layouts/**/*.html',
    './layouts/**/*.html',
  ],
  theme: {
    ...theme.theme,
    extend: {
      ...theme.theme.extend,
      fontFamily: {
        ...theme.theme.extend.fontFamily,
        sans: ['Nunito', 'sans-serif'],
        heading: ['Quicksand', 'sans-serif'],
      },
      typography: (theme) => ({
        ...theme.typography,
        DEFAULT: {
          css: {
            ...theme.typography.DEFAULT.css,
            'h1, h2, h3, h4, h5, h6': {
              fontFamily: 'Quicksand, sans-serif',
            },
            body: {
              fontFamily: 'Nunito, sans-serif',
            },
          },
        },
      }),
    }
  }
};
