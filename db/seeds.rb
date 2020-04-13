# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
  email: 'user@gmail.com',
  name: 'Anteneh Gebeyaw',
  password: 'password',
  password_confirmation: 'password',
  about: 'about section',
  location: 'location section',
  profile_links: 'github.com',
  visibility: true,
  level_of_availability: '2-4 hours a day'
)

user2 = User.create!(
  email: 'user2@gmail.com',
  name: 'Nati Abebe',
  password: 'password',
  password_confirmation: 'password',
  about: 'about section',
  location: 'location section',
  profile_links: 'github.com',
  visibility: true,
  level_of_availability: '99-100 hours a day'
)

user3 = User.create!(
  email: 'user3@gmail.com',
  name: 'Gobena Merga',
  password: 'password',
  password_confirmation: 'password'
)

user4 = User.create!(
  email: 'user4@gmail.com',
  name: 'Amanu',
  password: 'password',
  password_confirmation: 'password'
)

user5 = User.create!(
  email: 'user5@gmail.com',
  name: 'Helom Berhane',
  password: 'password',
  password_confirmation: 'password'
)

user6 = User.create!(
  email: 'user6@gmail.com',
  name: 'Yohannes Haile',
  password: 'password',
  password_confirmation: 'password'
)

# PROJECTS
project1 = user.projects.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Social Media Asset Creation',
  target_location: 'Ethiopia',
  description: 'Creating and verifying COVID-19 prevention health information and sharing it on all social media platforms',
  accepting_volunteers: true,
  highlight: true
)
project1.skill_list.add('Anything')
project1.save! # FIXME is this necessary?

project2 = Project.create!(
  user: user2,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Social Media outreach and tracking',
  description: 'Establish contact and confirm participation of all influencer & social media partners',
  highlight: true,
  accepting_volunteers: false
)
project2.skill_list.add('Design')
project2.save! # FIXME is this necessary?

project3 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Public Dashboard',
  target_location: 'Ethiopia',
  description: 'Unified internal dashboard that shows real-time data on COVID-19 cases',
  accepting_volunteers: true,
  highlight: true
)

project4 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Private Ops Dashboard',
  description: 'Creating a streamlined process to deploy code using really cool AWS tooling - containers, Code Build, Code Pipeline, CloudFormation',
  accepting_volunteers: true,
  highlight: true
)

project5 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'API',
  description: 'Creating a single beautiful API to rule them all for critical systems to access and push data- forms, dashboards, bots, SMS',
  accepting_volunteers: true,
  highlight: true
)

project6 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Awareness Bots (Telegram, WhatsApp, FB)',
  description: 'Creating a bot to show hotel vacancies for travelers that need to be quarantined',
  accepting_volunteers: true,
  highlight: true
)

project7 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Data Collection Bots (Telegram, WhatsApp, FB)',
  description: 'Unified internal dashboard that shows real-time data on COVID-19 cases',
  accepting_volunteers: true,
  highlight: true
)

project8 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Awareness SMS (2-way)',
  description: 'Creating a streamlined process to deploy code using really cool AWS tooling - containers, Code Build, Code Pipeline, CloudFormation',
  accepting_volunteers: true,
  highlight: true
)

project9 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Awareness Site',
  description: 'Creating a single beautiful API to rule them all for critical systems to access and push data- forms, dashboards, bots, SMS',
  accepting_volunteers: true,
  highlight: true
)

project10 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Hotel Vacancy Project',
  description: 'Creating a bot to show hotel vacancies for travelers that need to be quarantined',
  accepting_volunteers: true,
  highlight: true
)

project11 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Data Collection Bots (Telegram, WhatsApp, FB)',
  description: 'Unified internal dashboard that shows real-time data on COVID-19 cases',
  accepting_volunteers: true,
  highlight: true
)

project12 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Awareness SMS (2-way)',
  description: 'Creating a streamlined process to deploy code using really cool AWS tooling - containers, Code Build, Code Pipeline, CloudFormation',
  accepting_volunteers: true,
  highlight: true
)

project13 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Awareness Site',
  description: 'Creating a single beautiful API to rule them all for critical systems to access and push data- forms, dashboards, bots, SMS',
  accepting_volunteers: true,
  highlight: true
)

project14 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Hotel Vacancy Project',
  description: 'Creating a bot to show hotel vacancies for travelers that need to be quarantined',
  accepting_volunteers: true,
  highlight: true
)

project15 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'DIY Masks',
  description: 'Research, source and create Personal Protection Equipment alternatives for the general public  in Ethiopia.',
  accepting_volunteers: true,
  highlight: true
)

project16 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'DIY Ventilators',
  description: 'Research, source and create Mechanical Ventilator alternatives in Ethiopia.',
  accepting_volunteers: true,
  highlight: true
)

project17 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'DIY Face Shields',
  description: 'Research and source the production of face shields for medical professionals in Ethiopia.',
  accepting_volunteers: true,
  highlight: true
)

project18 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Test Kits  (Initial Phase)',
  description: 'Research and source local production of test kits in Ethiopia.',
  accepting_volunteers: true,
  highlight: true
)

project19 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Quarantine location delivery',
  description: 'Funding and facilitating food and essential items delivery for quarantine centers, food-insecure families in Ethiopia, and healthcare workers',
  accepting_volunteers: true,
  highlight: true
)

project20 = Project.create(
  user: user,
  status: ALL_PROJECT_STATUS.shuffle.first,
  name: 'Care packages/ delivery promotion to communities',
  description: 'Facilitate and promote food delivery in general; Source and support the delivery of care package/food and essentials/ for food-insecure and vulnerable families in Ethiopia.',
  accepting_volunteers: true,
  highlight: true
)

# VOLUNTEERS
project1.volunteered_users << user3
project3.volunteered_users << user
project3.volunteered_users << user2
project3.volunteered_users << user3
project3.volunteered_users << user4

# SKILLS
project1.skill_list.add('Design')
project1.save


# PROJECT CATEGORIES/PROBLEMS
project1.project_type_list.add('Track the outbreak')
project5.project_type_list.add('Track the outbreak')
project2.project_type_list.add('Reduce spread')

project1.project_type_list.add('Scale testing')
project3.project_type_list.add('Treatment R&D')
project4.project_type_list.add('Medical equipments')

project3.project_type_list.add('E-Learning')
project4.project_type_list.add('Social giving')
project1.project_type_list.add('Map volunteers to needs')
project5.project_type_list.add('News and information')

project1.save
project2.save
project3.save
project4.save
project5.save
project6.save
project7.save
project8.save
project9.save
project10.save
project11.save
project12.save
project13.save
project14.save
project15.save
project16.save
project17.save
project18.save
project19.save
project20.save

