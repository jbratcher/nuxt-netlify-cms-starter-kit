<template>
  <v-container class="py-0" fluid>
    <v-row>
      <v-col class="pa-0">
        <!-- Hero Section -->
        <TheHero
          buttonOutline
          buttonText="Get Started"
          buttonTo="about"
          dark
          headerText="Nuxt Netlify CMS Starter Kit"
          imageSource="/images/vbanner.jpg"
          subText="Quickly spin up a static site using Nuxt with Netlify CMS.
                  Push to deploy on Netlify."
        />

        <!-- About Section -->
        <v-container id="about" class="py-12">
          <v-row align="center" justify="center">
            <v-col cols="12">
              <h2
                class="mb-6 text-center"
                :class="$breakpoint.mdAndUp ? 'display-2' : 'display-1'"
              >
                About this theme
              </h2>
              <h3
                class="mb-6 text-center"
                :class="$breakpoint.mdAndUp ? 'display-1' : 'headline'"
              >
                Learn more about this theme
              </h3>
              <v-container>
                <v-row>
                  <v-col
                    v-for="(card, index) in cards"
                    :key="index"
                    cols="12"
                    sm="4"
                  >
                    <v-hover
                      v-slot:default="{ hover }"
                      close-delay="200"
                      open-delay="200"
                    >
                      <v-card
                        :class="{
                          'my-6': $breakpoint.mdAndUp,
                          'white--text primary accent-4 my-6 elevation-24': hover,
                        }"
                        height="100%"
                      >
                        <v-btn
                          class="mt-6 mb-3 pl-12"
                          :href="card.link"
                          :aria-label="card.title"
                          :name="card.title"
                          text
                          width="6rem"
                          height="6rem"
                        >
                          <v-icon
                            :color="hover ? 'white' : 'primary'"
                            size="6rem"
                            >{{ card.icon }}</v-icon
                          >
                        </v-btn>
                        <v-card-title
                          class="font-weight-bold pl-6"
                          :class="$breakpoint.mdAndUp ? 'headline' : 'title'"
                          >{{ card.title }}</v-card-title
                        >
                        <v-card-title
                          class="font-weight-regular pl-6"
                          :class="$breakpoint.mdAndUp ? 'title' : 'subtitle-1'"
                          >{{ card.body }}</v-card-title
                        >
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
import TheHero from "../components/TheHero";
import { mdiNuxt, mdiVuetify, mdiWeb } from "@mdi/js";
export default {
  components: {
    TheHero,
  },
  head() {
    return {
      title: `Home | Nuxt Netlify CMS Starter Kit`,
      meta: [
        {
          hid: `description`,
          name: "description",
          content: `The home page for Nuxt Netlify CMS Starter Kit`,
        },
      ],
      script: [
        {
          defer: true,
          src: "https://identity.netlify.com/v1/netlify-identity-widget.js",
        },
      ],
    };
  },
  data() {
    return {
      cards: [
        {
          icon: mdiNuxt,
          title: "Nuxt",
          body:
            "Supercharger for Vue.js. Enjoy all the benefits of Vue with configuration out of the box. Perfect for SSR, SPAs, or static sites alike. Modular, performant, and enjoyable.",
          link: "https://nuxtjs.org/",
        },
        {
          icon: mdiVuetify,
          title: "Vuetify",
          body:
            "Vuetify is a Vue UI Library with beautifully handcrafted Material Components. No design skills required — everything you need to create amazing applications is at your fingertips.",
          link: "https://vuetifyjs.com/",
        },
        {
          icon: mdiWeb,
          title: "Netlify CMS",
          body:
            "Get the speed, security, and scalability of a static site, while still providing a convenient editing interface for content.",
          link: "https://www.netlifycms.org/",
        },
      ],
    };
  },
};
</script>

<style lang="scss"></style>
