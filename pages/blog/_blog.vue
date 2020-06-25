<template>
  <v-container class="py-0" fluid>
    <v-row>
      <v-col class="pa-0">
        <!-- Hero Section -->
        <TheSplash
          :headerText="blogPost.title"
          imageSource="https://cdn.vuetifyjs.com/images/backgrounds/vbanner.jpg"
          :subText="blogPost.description"
        />

        <article class="mb-12">
          <v-card tile>
            <v-card
              class="mx-auto"
              flat
              :width="$breakpoint.mdAndUp ? '75vw' : '90vw'"
            >
              <v-card-text
                class="body-1"
                :class="$breakpoint.mdAndUp ? 'px-12' : 'px-6'"
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
import TheSplash from "../../components/TheSplash";
export default {
  components: {
    TheSplash,
  },
  layout: "default",
  head() {
    let blogPost = this.blogPost;
    return {
      title: `${blogPost.title} | Nuxt Netlify CMS Starter Kit`,
      meta: [
        {
          hid: `description`,
          name: "description",
          content: `${blogPost.description}`,
        },
      ],
    };
  },
  async asyncData({ params, payload }) {
    if (payload) return { blogPost: payload };
    else
      return {
        blogPost: await require(`~/assets/content/blog/${params.blog}.json`),
      };
  },
};
</script>
<style lang="scss" scoped></style>
