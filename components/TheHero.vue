<template>
  <v-container class="d-flex flex-column align-center justify-center pa-0 white--text" fluid>
    <v-parallax dark :src="imageSource" lazy-src="https://picsum.photos/id/0/10/6">
      <v-row align="center" justify="center">
        <v-col class="text-center pt-12 px-6" cols="12">
          <h1
            :class="{
              'display-2 mb-12': $breakpoint.mdAndUp,
              'display-1 mb-2': $breakpoint.smAndDown
            }"
          >{{ headerText }}</h1>
          <p
            class="mb-12"
            :class="{
              headline: $breakpoint.mdAndUp,
              'subtitle-1': $breakpoint.smAndDown
            }"
          >{{ subText }}</p>
          <v-btn
            :color="buttonColor"
            :dark="dark"
            :href="`#${buttonTo}`"
            :light="light"
            :name="buttonTo"
            :outlined="buttonOutline"
            :x-large="$breakpoint.mdAndUp"
            :large="$breakpoint.smAndDown"
          >{{ buttonText }}</v-btn>
        </v-col>
      </v-row>
    </v-parallax>
  </v-container>
</template>

<script>
export default {
  name: 'TheHero',
  props: {
    buttonColor: {
      type: String,
      default: ''
    },
    buttonOutline: {
      type: Boolean,
      default: false
    },
    buttonText: {
      type: String,
      default: ''
    },
    buttonTo: {
      type: String,
      default: ''
    },
    dark: {
      type: Boolean,
      default: true
    },
    headerText: {
      type: String,
      default: ''
    },
    imageSource: {
      type: String,
      default: ''
    },
    light: {
      type: Boolean,
      default: false
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
  // > .v-parallax__image-container {
  //   filter: brightness(0.2);
  // }
}
</style>
