# Nuxt, Vuetify, & Netlify CMS Starter Kit

A simple repo to add Vueity and blog functionality to [Nuxt & Netlify CMS Starter](https://github.com/renestalder/nuxt-netlify-cms-starter-template)

A lot of the starter repos for **Nuxt x Netlify CMS** use a module like `nuxtent` or `nuxtdown` to manage flat file content. This project is meant to be a solution for those who don't mind doing a little more configuration to not have to rely on these dependencies.

1. Clone the repository locally and cd into the directory.

```bash
git clone https://github.com/jbratcher/nuxt-netlify-cms-starter-kit

cd nuxt-netlify-cms-starter
```

2. Install dependencies.

```bash
npm install
```

3. Run the project for local dev. This will start a hot-reloading server at `localhost:3000`.

```bash
npm run dev
```

4. Build the app for server-side rendered deployment. See more about **Universal SSR** in the [Nuxt.js docs](https://nuxtjs.org/guide#server-rendered-universal-ssr-).

```bash
npm run build

# And to serve that deployment...
npm run start
```

5.  Generate a fully pre-rendered static site. See more [in the docs](https://nuxtjs.org/guide#static-generated-pre-rendering-).

```bash
npm run generate
```

> This project was bootstrapped with `create-nuxt-app`. There are more detailed explanations of how everything works in the [Nuxt.js docs](https://nuxtjs.org).

## Activating Netlify CMS

This project comes with Netlify CMS ready to rumble, and a basic blog configuration. To use Netlify CMS:

### 🔏 Authenticating with Netlify Identity

1. Deploy to Netlify at least once.
2. Go to **Settings > Identity**, and select **Enable Identity service**.
3. Once enabled, select **Settings and usage**, and scroll down to **Registration preferences**. You can set this to either **Open** or **Invite only**, but usually **Invite only** is your best bet for a personal site.
4. If you don't want to create an account, or would like to use an external provider such as GitHub or Google, you can enable those services under **External providers**.
5. Scroll down to **Services** and click **Enable Git Gateway**.

### Local Setup

1. In your browser, navigate to `localhost:3000/admin`.
2. Enter the Netlify URL of your site when prompted.
3. Login with the account you created or one of the external providers, if you enabled them.

### Use Netlify CMS Dashboard

1. In your browser, naviage to `localhost:3000/admin`.
2. Login via your chosen method.
3. You will be redirectd to the dashboard where you can create and manage posts
