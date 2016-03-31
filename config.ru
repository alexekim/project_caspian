require 'sinatra/base'

require './controllers/application'

require './models/account'
require './models/camp_location'
require './models/personal'
require './models/medical'
require './models/contact'

require './controllers/account'
require './controllers/camp_location'
require './controllers/contact'
require './controllers/medical'
require './controllers/personal'
require './controllers/profile'

map('/')              {run ApplicationController}
map('/account')       {run AccountController}
map('/camp_location') {run LocationController}
map('/contact')       {run ContactController}
map('/personal')      {run PersonalController}
map('/medical')       {run MedicalController}
map('/profile')       {run ProfileController}
