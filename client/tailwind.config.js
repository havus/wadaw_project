
module.exports = {
  theme: {
    extend: {
      spacing: {
        112: '28rem',
      },
      colors: {
        'gray-blue': {
          50: '#F6F8FC',
        },
      },
      fontFamily: {
        'playfair-display': ['Playfair-Display'],
      },
      // minHeight: (theme) => ({
      //   ...theme('spacing'),
      // }),
      minHeight: (theme) => {
        return { ...theme('spacing') };
      },
      maxHeight: (theme) => {
        return { ...theme('spacing') };
      },
      minWidth: (theme) => {
        return { ...theme('spacing') };
      },
      maxWidth: (theme) => {
        return { ...theme('spacing') };
      },
    },
  },
};
