<template>
  <v-layout>
    <v-col>
      <v-sheet class="ma-0" color="primary lighten-2" dark tile>
        <h1 class="headline pa-2" display="headline">Blog > {{ blogPost.title }}</h1>
      </v-sheet>
      <article>
        <v-card class="d-flex flex-column align-center mx-auto">
          <v-img
            src="https://picsum.photos/1280/920"
            lazy-src="https://picsum.photos/1280/920"
            width="1280"
            max-height="300"
          />
          <v-card-title class="display-1">{{blogPost.title}}</v-card-title>
          <v-card-subtitle class="subtitle-1">{{blogPost.description}}</v-card-subtitle>
          <v-card-text v-html="$md.render(blogPost.body)"></v-card-text>
        </v-card>
      </article>
    </v-col>
  </v-layout>
</template>
<script>
export default {
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
.col {
  margin: 0;
  padding: 0;
}
</style>