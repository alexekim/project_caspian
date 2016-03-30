require 'sinatra/base'

require './controllers/application'

require './controllers/account'
require './controllers/personal'
require './controllers/contact'
require './controllers/medical'
require './controllers/camp_location'
require './controllers/profile'

require './models/account'
require './models/personal'
require './models/contact'
require './models/medical'
require './models/camp_location'

map('/') {run ApplicationController}
map('/account') {run AccountController}
map('/camp_location') {run LocationController}
map('/contact') {run ContactController}
map('/personal') {run PersonalController}
map('/medical') {run MedicalController}
map('/profile') {run ProfileController}
