export default {
  async nuxtServerInit({ commit }) {
    // return json files from blog folder
    let files = await require.context(
      "~/assets/content/blog/",
      false,
      /\.json$/
    );
    // creates the blog post from the file json
    // returns array of objects
    let blogPosts = files.keys().map((key) => {
      let response = files(key);
      response.slug = key.slice(2, -5);
      return response;
    });
    await commit("setBlogPosts", blogPosts);
  },
};
