require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './controllers/camp_location'
require './controllers/contact'
require './controllers/medical'
require './controllers/personal'

require './models/account'
require './models/camp_location'
require './models/personal'
require './models/medical'

map('/') {run ApplicationController}
map('/account') {run AccountController}
map('/location') {run LocationController}
map('/contact') {run ContactController}
map('/personal') {run PersonalController}
map('/medical') {run MedicalController}
