<template>
  <v-container
    class="d-flex flex-column align-center justify-center pa-0 white--text"
    fluid
  >
    <v-parallax
      dark
      :src="imageSource"
      lazy-src="https://picsum.photos/id/0/10/6"
      :height="$breakpoint.mdAndUp ? '525' : '480'"
    >
      <v-row align="center" justify="center">
        <v-col class="text-center pb-6 px-6" cols="12">
          <h1
            :class="{
              'display-2 mb-12': $breakpoint.mdAndUp,
              'display-1 mb-2': $breakpoint.smAndDown
            }"
          >
            {{ headerText }}
          </h1>
          <p
            class="mb-12"
            :class="{
              headline: $breakpoint.mdAndUp,
              'subtitle-1': $breakpoint.smAndDown
            }"
          >
            {{ subText }}
          </p>
        </v-col>
      </v-row>
    </v-parallax>
  </v-container>
</template>

<script>
export default {
  name: 'TheSplash',
  props: {
    imageSource: {
      type: String,
      default: ''
    },
    headerText: {
      type: String,
      default: ''
    },
    subText: {
      type: String,
      default: ''
    }
  }
}
</script>

<style lang="scss">
.v-parallax {
  width: 100vw;
  > .v-parallax__image-container {
    filter: brightness(0.2);
  }
}
</style>
