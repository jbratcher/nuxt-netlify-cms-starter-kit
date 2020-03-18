<template>
  <v-app>
    <!-- Header Area -->
    <v-app-bar
      app
      light
      elevate-on-scroll
      :height="navHeight"
      hide-on-scroll
      scroll-threshold="200"
      shrink-on-scroll
      tile
    >
      <v-toolbar-title class="align-self-center pb-0">{{ appTitle }}</v-toolbar-title>
      <v-spacer />
      <v-app-bar-nav-icon class="hidden-md-and-up" @click.stop="drawer = !drawer" x-large />
      <MenuLinks :general-links="generalLinks" list-class="hidden-sm-and-down" />
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
    <v-footer class="py-6">
      <h2>{{ appTitle }}</h2>
      <p>{{ appDescription }}</p>
      <ul>
        <li v-for="(link, i) in footerLinks" :key="i + link.title">
          <v-btn text rounded>{{ link.title }}</v-btn>
        </li>
      </ul>
      <v-container>
        {{ new Date().getFullYear() }}&nbsp;-&nbsp;
        <strong>{{ appTitle }}</strong>
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
      appTitle: process.env.title,
      appDescription: process.env.description,
      drawer: false,
      // add footer links here
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
          to: '/blog'
        },
        {
          title: 'Contact Us',
          to: '/'
        }
      ],
      // add main nav links here
      // material design icons https://materialdesignicons.com/
      generalLinks: [
        {
          icon: 'mdi-home',
          title: 'Home',
          to: '/'
        },
        {
          icon: 'mdi-post',
          title: 'Blog',
          to: '/blog'
        }
      ],
      miniVariant: false
    }
  },
  computed: {
    formattedAppTitle() {
      if (this.appTitle.length > 10) {
        return this.appTitle.substring(0, 10) + '...'
      } else {
        return this.appTitle
      }
    },
    navHeight() {
      let height = '100px'
      switch (this.$vuetify.breakpoint.name) {
        case 'xs':
          height = '80px'
          break
        case 'sm':
          height = '90px'
          break
        case 'md':
          height = '100px'
          break
        case 'lg':
          height = '110px'
          break
        case 'xl':
          height = '120px'
          break
      }
      return height
    }
  }
}
</script>

<style lang="scss">
// global

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

.v-card__title {
  word-break: break-word;
}

// main nav

.v-toolbar,
.v-toolbar--prominent {
  .v-toolbar__content {
    align-items: center;
  }
}

// .v-toolbar__content {
//   .v-toolbar__title {
//     font-size: 2rem;
//     font-weight: 900;
//     margin-left: 2rem;
//   }

//   .v-list {
//     background: none;
//     display: flex;
//     align-items: center;
//     margin-right: 2rem;

//     .v-list-item {
//       flex: 0;
//       margin: 0 0.5rem;
//       padding: 0 1.5rem;

//       .v-list-item__title {
//         font-size: 1.33rem;
//         font-weight: 400;
//       }
//     }
//   }
// }

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

// global styles shared among pages can go here
</style>