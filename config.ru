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
map('') {run AccountController}
map('') {run LocationController}
map('') {run ContactController}
map('') {run PersonalController}
map('') {run MedicalController}
