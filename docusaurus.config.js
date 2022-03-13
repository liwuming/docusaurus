// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/shadesOfPurple');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: "liwuming's blog",
  tagline: 'Dinosaurs are cool',
  url: 'https://liwuming.github.io',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'liwuming', // Usually your GitHub org/user name.
  projectName: 'docusaurus', // Usually your repo name.
  trailingSlash: false,
  deploymentBranch: 'gh-pages',
  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl: 'https://github.com/liwuming/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          editUrl:
            'https://github.com/liwuming/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      navbar: {
        logo: {
          alt: '爱编程',
          src: '/img/logo.svg',
        },
        items: [
			{
            type: 'doc',
            docId: 'intro',
            position: 'left',
            label: 'Tutorial2',
          },
		  {
            type: 'doc',
            docId: 'linux/intro',
            position: 'left',
            label: 'linux',
          },{
            type: 'doc',
            docId: 'mysql/intro',
            position: 'left',
            label: 'mysql',
          },{
            type: 'doc',
            docId: 'python/index',
            position: 'left',
            label: 'python',
          },
          {to: '/blog', label: 'Blog3', position: 'left'},
		  
		  
		  {
            label: '首页',href: '/',
            position: 'right',
          },
		  {
            label: '前端技能',
            position: 'right',
			items:[
				{
					label: 'Css/Sass',
					href: '/',
				},
				{
					label: 'EcmaScript',
					href: '/',
				},
				{
					label: 'Vue',
					href: '/',
				},
				{
					label: 'React',
					href: '/',
				}
			]
          },
		  {
            label: '后端技能',
            position: 'right',
			items:[
				{
					label: 'PHP',
					href: '/',
				},
				{
					label: 'Python',
					href: '/docs/python/',
				}
			]
          },
		  {
            label: '系统技能',
            position: 'right',
			items:[
				{
					label: 'Linux',
					href: '/docs/linux/intro',
				}
			]
          },
		  {
            label: '数据库',
            position: 'right',
			items:[
				{
					label: 'MySQL',
					href: '/docs/mysql/intro',
				},
				{
					label: 'redis',
					href: '/',
				},
				{
					label: 'mongoDB',
					href: '/',
				}
			]
          },
		  
          {
            href: 'https://github.com/facebook/docusaurus',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        copyright: `Copyright © ${new Date().getFullYear()} My Project, Inc. Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
