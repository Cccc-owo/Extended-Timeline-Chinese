import { defineUserConfig } from "vuepress";
import theme from "./theme.js";

export default defineUserConfig({
  base: "/",

  locales: {
    "/en/": {
      lang: "en-US",
      title: "Docs Demo",
      description: "A docs demo for vuepress-theme-hope",
    },
    "/": {
      lang: "zh-CN",
      title: "ET 中文社区网站",
      description: "Extended Timeline的中文交流网站",
    },
  },

  theme,

  shouldPrefetch: false,
});
