<template>
  <v-row>
    <v-col class="pa-0">
      <v-sheet class="ma-0" color="primary" dark tile>
        <h1 class="headline pl-6 py-2">Blog > {{ blogPost.title }}</h1>
      </v-sheet>
      <article>
        <v-card class="d-flex flex-column align-center mx-auto" tile>
          <v-img
            src="https://picsum.photos/1280/920"
            lazy-src="https://picsum.photos/1280/920"
            width="1280"
            max-height="300"
          />
          <v-card-title class="display-2 mb-3">{{blogPost.title}}</v-card-title>
          <v-card-subtitle class="headline">{{blogPost.description}}</v-card-subtitle>
          <v-card-text class="container" v-html="$md.render(blogPost.body)"></v-card-text>
        </v-card>
      </article>
    </v-col>
  </v-row>
</template>
<script>
export default {
  layout: 'blog',
  async asyncData({ params, payload }) {
    if (payload) return { blogPost: payload }
    else
      return {
        blogPost: await require(`~/assets/content/blog/${params.blog}.json`)
      }
  }
}
</script>
<style lang="scss" scoped>
</style>