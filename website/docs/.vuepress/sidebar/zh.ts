import { sidebar } from "vuepress-theme-hope";

export const zhSidebar = sidebar({
  "/": [
    "",
    {
      icon: "page",
      text: "汉化项目",
      prefix: "ETCLP/",
      link: "/ETCE",
      children: "structure",
    },
    {
      icon: "page",
      text: "华夏拓展",
      prefix: "ETCE/",
      link: "/ETCE",
      children: "structure",
    },
    {
      icon: "profile",
      text: "关于",
      prefix: "about/",
      link: "/about",
    },
  ],
});
