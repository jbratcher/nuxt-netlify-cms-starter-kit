import LRU from "lru-cache";

const themeCache = new LRU({
  max: 10,
  maxAge: 1000 * 60 * 60, // 1 hour
});

export default (ctx) => {
  ctx.$vuetify.theme.options.themeCache = themeCache;
};
