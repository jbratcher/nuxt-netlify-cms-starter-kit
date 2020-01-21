<template>
  <v-app>
    <!-- Header Area -->
    <v-app-bar app elevate-on-scroll height="100px" fixed flat light tile>
      <v-toolbar-title>BrandLogo</v-toolbar-title>
      <v-spacer />
      <v-app-bar-nav-icon class="hidden-md-and-up" @click.stop="drawer = !drawer" />
      <MenuLinks :general-links="generalLinks" list-class="row hidden-md-and-down" />
    </v-app-bar>
    <!-- side/mobile navigation -->
    <v-navigation-drawer v-model="drawer" :mini-variant="miniVariant" fixed right>
      <MenuLinks :general-links="generalLinks" list-class="mobile" />
    </v-navigation-drawer>
    <!-- Nuxt content -->
    <v-content>
      <nuxt />
    </v-content>
    <!-- Footer Area -->
    <v-footer>
      <ul>
        <li v-for="(link, i) in footerLinks" :key="i + link.title">
          <v-btn text rounded>{{ link.title }}</v-btn>
        </li>
      </ul>
      <v-container>
        {{ new Date().getFullYear() }} —
        <strong>{{title}}</strong>
      </v-container>
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
          title: 'Home',
          to: '/'
        },
        {
          title: 'Blog',
          to: '/blog'
        }
      ],
      miniVariant: false,
      title: 'Nuxt Netfliy CMS Stater Kit'
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
  font-family: 'Poppins', sans-serif;
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
  min-height: 100vh;
  overflow-x: hidden;
}

// nav

.v-toolbar__title {
  font-size: 2rem;
  font-weight: 900;
  margin-left: 2rem;
}

.v-list {
  display: flex;
  align-items: center;
  margin-right: 2rem;

  .v-list-item {
    flex: 0;
    margin: 0 0.5rem;
    padding: 0 1.5rem;

    .v-list-item__title {
      font-size: 1.33rem;
      font-weight: 400;
    }
  }
}

.v-card__title {
  word-break: break-word;
}

.justify-space-evenly {
  justify-content: space-around;
  justify-content: space-evenly;
}

// footer

.v-footer {
  display: flex;
  flex-direction: column;
  align-items: center;

  ul {
    display: flex;
    justify-content: center;
    list-style-type: none;
    padding: 1rem 0;
  }

  .container {
    display: flex;
    justify-content: center;
    padding: 1rem 0;
  }
}
</style>