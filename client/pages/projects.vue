<template>
  <div class="pt-20 pb-32 text-gray-blue-900 bg-gray-blue-50 min-h-screen">
    <div class="container mx-auto my-10">
      <ProjectUnit
        v-for="(project, i) in projects" :key="i"
        :content="project"
      />
    </div>
  </div>
</template>

<script>
// size for later:
// mini 24 x 24
// normal 48 x 48
// bigger 73 x 73
// original original
export default {
  name: 'ProjectsPage',
  data() {
    return {
      projects: [
        {
          id: 1,
          name: 'Wadaw HQ website',
          description: 'Core website wadaw, project and contributor list. Is it responsive website? Of course!',
          progress_percentage: 25,
          status: 'in progress',
          tasks: [
            {
              title: 'Create a Landing Page',
              content: 'Landing page with domain wadaw.id, with elegant content, persuasive text and animations.',
              status: 'done',
            },
            {
              title: 'Listing at Google (SEO)',
              content: 'Register the domain to google search console (keyword "wadaw project").',
              status: 'done',
            },
            {
              title: 'Create Project List Page',
              content: 'Page to show all projects with progress and initial roadmap that handled by wadaw.',
              status: 'done',
            },
            {
              title: 'Create System Design and Inintilize a Server',
              content: 'Create a server to store data instead of static content.',
              status: 'in progress',
            },
            {
              title: 'User Authorization',
              content: 'Enable user to register and login with Google.',
              status: 'todo',
            },
            {
              title: 'Create Project Detail Page',
              content: 'Page to show the project details, link to the related documents and the roadmap project.',
              status: 'todo',
            },
            {
              title: 'Create Contributor Detail Page',
              content: 'Page to display contributor details.',
              status: 'todo',
            },
            {
              title: 'Create Project Request Form',
              content: 'Form to submit new idea, with Rich Text editor (WYSIWYG HTML editor).',
              status: 'todo',
            },
            {
              title: 'Create Project Request List',
              content: 'Page to see all of submitted project.',
              status: 'todo',
            },
          ],
          tech_stack: [
            'Nodejs',
            'Vuejs',
            'Nuxtjs',
            'Tailwindcss',
          ],
          contributors: [
            {
              full_name: 'Muhammad Hafidz Mahrus',
              nickname: 'Hafidz',
              username: 'hafidz',
              url_profile: 'hafidz',
              roles: [
                {
                  id: 2,
                  name: 'UI/UX Designer',
                },
                {
                  id: 3,
                  name: 'Software Engineer',
                },
              ],
            },
          ],
        },
        {
          id: 2,
          name: 'POS Chameleon',
          description: `POS application make user easier to customize their willingness to design their database structure.
          Customable plug-ins, automation service everyday, limited data accessible, and customable user behavior.`,
          progress_percentage: 3,
          status: 'in discussion',
          tasks: [
            {
              title: 'Create a PRD (Project Requirement Document)',
              content: `Explain the background problems. Also define all of Minimum Viable Product (MVP),
              list of features (including user values), project principles (including development plan, and limitation),
              target markets, and success criteria. Of course including a monetization strategy.`,
              status: 'in progress',
            },
            {
              title: 'Research and Create UI/UX Design',
              content: `How much pages in application, user flows of each test case,
              and detailed design of each page.`,
              status: 'in progress',
            },
            {
              title: 'Create System Design',
              content: `How much pages in application, database structure design,
              technology to be used (tech stack), how the app communicates to each other,
              and create API list if necessary.`,
              status: 'todo',
            },
            {
              title: 'Create a Team Roadmap',
              content: 'Create todo list, priority, and acceptance criteria.',
              status: 'todo',
            },
            {
              title: 'Publish the application',
              content: `Deploy to App Store and Google Play Store, and add project detail page to show additional feature list
              and bug report form.`,
              status: 'todo',
            },
          ],
          tech_stack: [
            'Golang',
            'Flutter',
          ],
          contributors: [
            {
              full_name: 'Muhammad Hafidz Mahrus',
              nickname: 'Hafidz',
              username: 'hafidz',
              url_profile: 'hafidz',
              roles: [
                {
                  id: 1,
                  name: 'Product Manager',
                },
                {
                  id: 2,
                  name: 'UI/UX Designer',
                },
                {
                  id: 3,
                  name: 'Software Engineer',
                },
              ],
            },
          ],
        },
      ],
    };
  },
};
</script>

<style>

</style>
