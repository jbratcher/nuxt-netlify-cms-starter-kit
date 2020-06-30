<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/D7cl5kX.png" alt="Project logo"></a>
</p>

<h3 align="center">Nuxt Netlify CMS Starter Kit</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/jbratcher/nuxt-netlify-cms-starter-kit.svg)](https://github.com/jbratcher/nuxt-netlify-cms-starter-kit/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/jbratcher/nuxt-netlify-cms-starter-kit.svg)](https://github.com/jbratcher/nuxt-netlify-cms-starter-kit/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center">An opinionated starter project for Nuxt, Vuetify, and Netlify CMS.

Quickly bootstrap a blog, CMS, or static site using the power of Nuxt and the headless CMS, Netlify CMS. One click Netlify deployment. Optimized for performance.
<br>

</p>

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)

## About <a name = "about"></a>

This starter project was designed to bootstrap the development of a modern, headless CMS blog or static website. Using the power of Nuxt, you get a Vue application that is pre-configured to maximizing performance and SEO opportunities out of the box.

Vuetify is used for the UI library and this project features responsive fonts, theme caching, a global breakpoint fix and much more.

Netlify CMS is used for content management so you can easily create and manage blog posts and other resources while integrating them into your git workflow.

This project is also set to work with Netlify which offers a free starter plan for hosting personal projects, hobby sites, and experiments for free.

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/jbratcher/nuxt-netlify-cms-starter-kit)

Built on top of [Nuxt Netlify CMS Starter](https://github.com/xdesro/nuxt-netlify-cms-starter)

Other features:

- Vuex store and modules
- Docker support
- Vuetify breakpoint fix
- Vuetify theme caching for performance
- Custom scroll directive for main nav

## Prerequisites

You will need to have Node and npm installed.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. Deployment is dead simple using Netlify. Just one click for initial deployment and automatic deploys when you push new changes to Github.

The quickest way to get started is with Netlify's hyper-convenient **one-click Deploy To Netlify**, which will automatically create an instance of this project on your GitHub account and deploy it instantly to Netlify.

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/jbratcher/nuxt-netlify-cms-starter-kit)

For local development:

1. Clone the repository locally and cd into the directory.

```bash
git clone https://github.com/jbratcher/nuxt-netlify-cms-starter-kit

cd nuxt-netlify-cms-starter-kit
```

2. Install dependencies.

```bash
yarn install
```

3. Run the project for local dev. This will start a hot-reloading server at `localhost:3000`.

```bash
yarn dev
```

4. Build the app for server-side rendered deployment. See more about **Universal SSR** in the [Nuxt.js docs](https://nuxtjs.org/guide#server-rendered-universal-ssr-).

```bash
yarn build

# And to serve that deployment...
yarn start
```

5. Generate a fully pre-rendered static site. See more [in the docs](https://nuxtjs.org/guide#static-generated-pre-rendering-).

```bash
yarn generate
```

> This project was bootstrapped with `create-nuxt-app`. There are more detailed explanations of how everything works in the [Nuxt.js docs](https://nuxtjs.org).

## Netlify CMS

This project comes with Netlify CMS ready to rumble, and a basic blog configuration. To use Netlify CMS:

### Authenticating with Netlify Identity

1. Deploy to Netlify at least once.
2. Go to **Settings > Identity**, and select **Enable Identity service**.
3. Once enabled, select **Settings and usage**, and scroll down to **Registration preferences**. You can set this to either **Open** or **Invite only**, but usually **Invite only** is your best bet for a personal site.
4. If you don't want to create an account, or would like to use an external provider such as GitHub or Google, you can enable those services under **External providers**.
5. Scroll down to **Services** and click **Enable Git Gateway**.

### Local Setup

1. In your browser, navigate to `localhost:3000/admin`.
2. Enter the Netlify URL of your site when prompted.
3. Login with the account you created or one of the external providers, if you enabled them.

> To change netlify deploy url, run localStorage.removeItem("netlifySiteURL") in the browser console.

### Use Netlify CMS Dashboard

1. In your browser, navigate to `localhost:3000/admin`.
2. Login
3. From the dashboard, you can create, edit, and delete resources and resource types.

### Start Creating

At this point you should be able to start customizing the application to your requirements.
