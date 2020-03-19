<template>
  <v-row>
    <v-col class="pa-0">
      <v-sheet color="primary" dark tile>
        <h1
          :class="{'headline pl-12 py-2': $breakpoint.mdAndUp, 'title pl-6 py-2': $breakpoint.smAndDown}"
        >Blog > {{ blogPost.title }}</h1>
      </v-sheet>
      <article>
        <v-card tile>
          <v-img
            src="https://picsum.photos/1280/920"
            lazy-src="https://picsum.photos/1280/920"
            width="1280"
            max-height="300"
          />
          <v-card-title
            :class="{'display-2 mb-3 px-12': $breakpoint.mdAndUp, 'display-1 mb-3 px-6': $breakpoint.smAndDown}"
          >{{blogPost.title}}</v-card-title>
          <v-card-subtitle
            :class="{'headline px-12': $breakpoint.mdAndUp, 'subtitle-1 px-6': $breakpoint.smAndDown}"
          >{{blogPost.description}}</v-card-subtitle>
          <v-card-text
            :class="{'body-1 px-12': $breakpoint.mdAndUp, 'body-1 px-6': $breakpoint.smAndDown}"
            v-html="$md.render(blogPost.body)"
          ></v-card-text>
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