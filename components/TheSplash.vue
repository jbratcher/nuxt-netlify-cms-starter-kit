<template>
  <v-container
    class="d-flex flex-column align-center justify-center pa-0 white--text"
    fluid
  >
    <v-parallax
      dark
      :src="imageSource"
      lazy-src="https://picsum.photos/id/0/10/6"
      :height="$breakpoint.mdAndUp ? '525' : '400'"
    >
      <v-row align="center" justify="center">
        <v-col class="text-center pb-6 px-6" cols="12">
          <h1
            :class="$breakpoint.mdAndUp ? 'display-1 mb-12' : 'display-1 mb-2'"
          >
            {{ headerText }}
          </h1>
          <p
            class="mb-12"
            :class="$breakpoint.mdAndUp ? 'title' : 'subtitle-1'"
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
  name: "TheSplash",
  props: {
    imageSource: {
      type: String,
      default: "",
    },
    headerText: {
      type: String,
      default: "",
    },
    subText: {
      type: String,
      default: "",
    },
  },
};
</script>

<style lang="scss">
.v-parallax {
  width: 100vw;
  > .v-parallax__image-container {
    filter: brightness(0.2);
  }
}
</style>
