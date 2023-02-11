import { navbar } from "vuepress-theme-hope";

export const zhNavbar = navbar([
  "/",
  {
    icon: "page",
    text: "汉化项目",
    //prefix: "ETCLP/",
    link: "/ETCLP",
  },
  {
    icon: "page",
    text: "华夏拓展",
    //prefix: "ETCE/",
    link: "/ETCE",
  },
  {
    icon: "profile",
    text: "关于",
    prefix: "about/",
    link: "/about",
  },
  //{
  //  text: "指南",
  //  icon: "creative",
  //  prefix: "/zh/guide/",
  //  children: [
  //    {
  //      text: "Bar",
  //      icon: "creative",
  //      prefix: "bar/",
  //      children: ["baz", { text: "...", icon: "more", link: "" }],
  //    },
  //    {
  //      text: "Foo",
  //      icon: "config",
  //      prefix: "foo/",
  //      children: ["ray", { text: "...", icon: "more", link: "" }],
  //    },
  //  ],
  //},
  {
    text: "GitHub（汉化项目）",
    icon: "github",
    link: "https://github.com/Cccc-owo/Extended-Timeline-Chinese-Localisation-Project",
  },
  {
    text: "GitHub（华夏拓展）",
    icon: "github",
    link: "https://github.com/Cccc-owo/ET-ChinaExtension",
  },
]);
