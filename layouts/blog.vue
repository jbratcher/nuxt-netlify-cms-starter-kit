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
      <v-toolbar-title
        :class="{'align-self-center pl-5 pb-0': $breakpoint.mdAndUp, 'align-self-center pl-0 pb-0': $breakpoint.smAndDown }"
      >{{ appTitle }}</v-toolbar-title>
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
    <v-footer class="d-flex flex-column align-center py-6">
      <h2
        :class="{'display-1 mb-3': $breakpoint.mdAndUp, 'headline mb-3': $breakpoint.smAndDown}"
      >{{ appTitle }}</h2>
      <p
        :class="{'headline': $breakpoint.mdAndUp, 'subtitle-1': $breakpoint.smAndDown}"
      >{{ appDescription }}</p>
      <nav>
        <ul class="d-flex flex-wrap py-3">
          <li v-for="(link, i) in footerLinks" :key="i + link.title">
            <v-btn text rounded>{{ link.title }}</v-btn>
          </li>
        </ul>
      </nav>
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
      switch (this.$breakpoint.name) {
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

html,
body,
.v-application {
  font-family: 'Poppins', sans-serif;
  font-size: 16px;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  line-height: 1.5;
  box-sizing: border-box;
  min-height: 100vh;
  overflow-x: hidden;
  scroll-behavior: smooth;
  text-rendering: optimizeSpeed;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  word-break: break-word;
  word-spacing: 1px;
}

// main nav

.v-toolbar,
.v-toolbar--prominent {
  .v-toolbar__content {
    align-items: center;
    padding: 0.25rem 0.75rem;
  }
}

// footer

.v-footer {
  ul {
    list-style-type: none;
  }
}

// global styles shared among pages can go here

.v-application {
  .v-card__title,
  .v-card__subtitle,
  .v-card__text {
    word-break: keep-all;
  }

  article > * + * {
    margin-top: 1em;
  }
}

/* Remove all animations and transitions for people that prefer not to see them */
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}
</style>