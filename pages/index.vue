<template>
  <v-container class="py-0" fluid>
    <v-row>
      <v-col class="pa-0">
        <!-- Hero Section -->
        <v-container
          id="hero"
          class="d-flex flex-column align-center justify-center pa-0 white--text"
          fluid
        >
          <v-parallax
            dark
            src="https://cdn.vuetifyjs.com/images/backgrounds/vbanner.jpg"
            lazy-src="https://picsum.photos/id/0/10/6"
          >
            <v-row align="center" justify="center">
              <v-col class="text-center px-6" cols="12">
                <h1
                  :class="{'display-2 mb-6': $breakpoint.mdAndUp, 'display-1 mb-2': $breakpoint.smAndDown}"
                >Nuxt Netlify CMS Starter Kit</h1>
                <p
                  :class="{'headline mb-12': $breakpoint.mdAndUp, 'subtitle-1 mb-12': $breakpoint.smAndDown}"
                >Quickly spin up a static site using Nuxt with Netlify CMS. Push to deploy on Netlify.</p>
                <v-btn
                  dark
                  outlined
                  :x-large="$breakpoint.mdAndUp"
                  :large="$breakpoint.smAndDown"
                >Get Started</v-btn>
              </v-col>
            </v-row>
          </v-parallax>
        </v-container>

        <!-- About Section -->
        <v-container id="about" class="py-12">
          <v-row align="center" justify="center">
            <v-col cols="12">
              <h2
                :class="{'display-2 text-center mb-6': $breakpoint.mdAndUp, 'display-1 text-center mb-6': $breakpoint.smAndDown}"
              >About this theme</h2>
              <h3
                :class="{'display-1 text-center mb-6': $breakpoint.mdAndUp, 'headline text-center mb-6': $breakpoint.smAndDown}"
              >Learn more about this theme</h3>
              <v-container>
                <v-row>
                  <v-col v-for="(card, index) in cards" :key="index" cols="12" sm="4">
                    <v-hover v-slot:default="{ hover }" close-delay="200" open-delay="200">
                      <v-card
                        :class="{'my-6': $breakpoint.mdAndUp, 'white--text primary accent-4 my-6 elevation-24': hover}"
                        height="100%"
                      >
                        <v-btn
                          class="mt-6 mb-3 pl-12"
                          :href="card.link"
                          text
                          width="6rem"
                          height="6rem"
                        >
                          <v-icon :color="hover ? 'white' : 'primary'" size="6rem">{{ card.icon }}</v-icon>
                        </v-btn>
                        <v-card-title
                          :class="{'headline font-weight-bold pl-6': $breakpoint.mdAndUp, 'title font-weight-bold pl-6': $breakpoint.smAndDown }"
                        >{{ card.title }}</v-card-title>
                        <v-card-title
                          :class="{'title font-weight-regular pl-6': $breakpoint.mdAndUp, 'subtitle-1 font-weight-regular pl-6': $breakpoint.smAndDown}"
                        >{{ card.body }}</v-card-title>
                      </v-card>
                    </v-hover>
                  </v-col>
                </v-row>
              </v-container>
            </v-col>
          </v-row>
        </v-container>
        <!-- End Main -->
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  head() {
    return {
      title: `Blog | Nuxt Netlify CMS Starter Kit`,
      meta: [
        {
          hid: `description`,
          name: 'description',
          content: `A blog using Nuxt and Netflify CMS`
        }
      ],
      script: [
        { src: 'https://identity.netlify.com/v1/netlify-identity-widget.js' }
      ]
    }
  },
  data() {
    return {
      cards: [
        {
          icon: 'mdi-nuxt',
          title: 'Nuxt',
          body:
            'Supercharger for Vue.js. Enjoy all the benefits of Vue with configuration out of the box. Perfect for SSR, SPAs, or static sites alike. Modular, performant, and enjoyable.',
          link: 'https://nuxtjs.org/'
        },
        {
          icon: 'mdi-vuetify',
          title: 'Card Title',
          body:
            'Vuetify is a Vue UI Library with beautifully handcrafted Material Components. No design skills required — everything you need to create amazing applications is at your fingertips.',
          link: 'https://vuetifyjs.com/'
        },
        {
          icon: 'mdi-web',
          title: 'Netlify CMS',
          body:
            'Get the speed, security, and scalability of a static site, while still providing a convenient editing interface for content.',
          link: 'https://www.netlifycms.org/'
        }
      ]
    }
  }
}
</script>

<style lang="scss">
#hero {
  .v-parallax {
    width: 100vw;
  }
}
</style>
