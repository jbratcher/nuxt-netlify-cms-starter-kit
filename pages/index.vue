<template>
  <v-layout>
    <v-flex>
      <main>
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
              <v-col class="text-center" cols="12">
                <h1 class="display-1 mb-2">Nuxt Netlify CMS Starter Kit</h1>
                <p
                  class="headline mb-12"
                >Quickly spin up a static site using Nuxt with Netlify CMS. Push to deploy on Netlify.</p>
                <v-btn dark outlined>Get Started</v-btn>
              </v-col>
            </v-row>
          </v-parallax>
        </v-container>

        <!-- Benefits Section -->
        <section id="benefits" class="py-12">
          <h1 class="display-1 pl-12">Benefits Section</h1>
        </section>

        <!-- About Section -->
        <section id="about" class="py-12">
          <h1 class="display-1 pl-12">About Section</h1>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="py-12">
          <h1 class="display-1 pl-12">Contact Section</h1>
        </section>
      </main>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  head() {
    return {
      script: [
        { src: 'https://identity.netlify.com/v1/netlify-identity-widget.js' }
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
