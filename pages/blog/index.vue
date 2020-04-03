<template>
  <v-row>
    <v-col class="pa-0">
      <v-sheet color="primary darken-2" dark tile>
        <h1
          :class="{'headline pl-6 py-2': $breakpoint.mdAndUp, 'title pl-6 py-2': $breakpoint.smAndDown}"
        >Blog ></h1>
      </v-sheet>
      <v-container>
        <v-row>
          <v-col
            v-for="(blogPost, index) in blogPosts"
            :key="index"
            cols="12"
            sm="6"
            :class="{'px-9': $breakpoint.smAndDown}"
          >
            <v-card class="d-flex flex-column" height="100%">
              <v-img
                src="https://picsum.photos/300/240"
                lazy-src="https://picsum.photos/300/240"
                max-height="200px"
              />
              <v-card-title
                :class="{'display-1': $breakpoint.mdAndUp, 'headline': $breakpoint.smAndDown}"
              >{{blogPost.title.substring(0, 70)}}</v-card-title>
              <v-card-subtitle
                :class="{'subtitle-1': $breakpoint.mdAndUp, 'body-2': $breakpoint.smAndDown}"
              >{{blogPost.description.substring(0, 80)}}</v-card-subtitle>
              <v-card-text
                class="body-1"
                v-html="$md.render(blogPost.body).substring(0, 144) + '...'"
              ></v-card-text>
              <v-btn
                class="mt-auto ml-3 mb-12"
                max-width="120px"
                color="primary"
                nuxt
                :to="`blog/${blogPost.slug}`"
              >Read more...</v-btn>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-col>
  </v-row>
</template>
<script>
export default {
  layout: 'blog',
  head() {
    return {
      title: `Blog | Nuxt Netlify CMS Starter Kit`,
      meta: [
        {
          hid: `description`,
          name: 'description',
          content: `A blog using Nuxt and Netlify CMS`
        }
      ]
    }
  },
  computed: {
    blogPosts() {
      return this.$store.state.blogPosts
    }
  }
}
</script>
<style lang="scss">
</style>