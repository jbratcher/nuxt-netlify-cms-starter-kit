<template>
  <v-app>
    <!-- Header Area -->
    <v-app-bar
      app
      color="primary"
      dark
      elevate-on-scroll
      fixed
      hide-on-scroll
      scroll-threshold="100"
      prominent
      height="70px"
    >
      <v-toolbar-title class="headline align-self-center" v-text="title" />
      <v-spacer />
      <v-app-bar-nav-icon class="hidden-md-and-up" @click.stop="drawer = !drawer" />
      <MenuLinks
        :general-links="generalLinks"
        list-class="row hidden-md-and-down"
        list-item-class="row-menu"
      />
    </v-app-bar>
    <!-- side/mobile navigation -->
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      class="primary"
      fixed
      dark
      app
      right
    >
      <MenuLinks :general-links="generalLinks" list-class="listClass" list-item-class="column" />
    </v-navigation-drawer>
    <!-- Nuxt content -->
    <v-content>
      <nuxt />
    </v-content>
    <!-- Footer Area -->
    <v-footer color="primary" class="pa-0">
      <v-row justify="center" no-gutters>
        <v-btn
          v-for="(link, i) in footerLinks"
          :key="i + link.title"
          color="white"
          text
          rounded
          class="my-2"
        >{{ link.title }}</v-btn>
        <v-col class="primary lighten-2 py-4 text-center white--text" cols="12">
          {{ new Date().getFullYear() }} —
          <strong>Green Spaces</strong>
        </v-col>
      </v-row>
    </v-footer>
  </v-app>
</template>

<script>
import MenuLinks from '../components/MenuLinks.vue'

export default {
  components: {
    MenuLinks
  },
  data() {
    return {
      drawer: false,
      fixed: false,
      footerLinks: [
        {
          title: 'Home',
          to: '/'
        },
        {
          title: 'About Us',
          to: '/'
        },
        {
          title: 'Team',
          to: '/'
        },
        {
          title: 'Services',
          to: '/'
        },
        {
          title: 'Blog',
          to: '/'
        },
        {
          title: 'Contact Us',
          to: '/'
        }
      ],
      generalLinks: [
        {
          icon: 'mdi-apps',
          title: 'Home',
          to: '/'
        },
        {
          icon: 'mdi-post',
          title: 'Blog',
          to: '/blog'
        }
      ],
      miniVariant: false,
      title: 'Nuxt Netlify CMS'
    }
  }
}
</script>

<style lang="scss">
*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

html,
body {
  overflow-x: hidden;
}

.v-application a {
  color: #fff !important;
}

.v-list-item.row-menu {
  flex: 1 1 0;
}

.v-card__title {
  word-break: break-word;
}

.text-shadow {
  text-shadow: 2px 2px 4px #000;
}

.box-shadow-1 {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.7);
}

.theme--dark.v-sheet {
  background-color: transparent;
}

.btn-box-shadow-primary {
  box-shadow: 0 0 8px rgba(0, 121, 107, 0.8);

  &:hover {
    box-shadow: none;
    transition: all 0.5s ease;
  }
}

.btn-box-shadow-secondary {
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.8);

  &:hover {
    box-shadow: none;
    transition: all 0.5s ease;
  }
}

.justify-space-evenly {
  justify-content: space-around;
  justify-content: space-evenly;
}
</style>