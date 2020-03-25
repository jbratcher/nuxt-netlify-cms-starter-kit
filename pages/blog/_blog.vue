<template>
  <v-container class="py-0" fluid>
    <v-row>
      <v-col class="pa-0">
        <v-sheet class="ma-0 pb-0" color="primary darken-2" dark tile>
          <h1
            :class="{'headline mb-0 ml-3 pa-2': $breakpoint.mdAndUp, 'title font-weight-bold mb-0 ml-3 pa-2': $breakpoint.smAndDown}"
          >Blog > {{ blogPost.title }}</h1>
        </v-sheet>
        <article class="mb-12">
          <v-card tile>
            <v-img
              :alt="blogPost.title"
              :aspect-ratio="16/9"
              class="mb-12"
              src="https://picsum.photos/1280/920"
              lazy-src="https://picsum.photos/10/6"
              width="100%"
              height="18.75rem"
            />
            <v-card class="mx-auto" flat :width="$breakpoint.mdAndUp ? '75vw' : '90vw'">
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
          </v-card>
        </article>
      </v-col>
    </v-row>
  </v-container>
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