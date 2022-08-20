
module.exports = {
  theme: {
    container: {
      padding: {
        DEFAULT:  '1rem',
        sm:       '2rem',
        lg:       '4rem',
        xl:       '5rem',
        '2xl':    '6rem',
      },
    },
    extend: {
      spacing: {
        112: '28rem',
      },
      textUnderlineOffset: {
        8: '8px',
      },
      borderWidth: {
        1: '1px',
      },
      colors: {
        'gray-blue': {
          50: '#F6F8FC',
          // 900: '#373D45',
          700: '#727883',
          800: '#6D718A',
          900: '#374151',
        },
        'orange': {
          100: '#FFE4DB',
          300: '#F86D3F',
        },
      },
      fontFamily: {
        'quicksand': ['Quicksand', 'sans'],
        'playfair-display': ['Playfair-Display'],
        'archivo': ['Archivo', 'sans'],
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
      animation: {
        'fade-in': "fade-in 0.7s ease-in forwards",
      },
      keyframes: {
        'fade-in': {
          "0%": { opacity: 0 },
          "100%": { opacity: 1 }
        }
      },
    },
  },
};
