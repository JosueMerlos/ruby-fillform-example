#!/usr/bin/env ruby
# -*- encoding : utf-8 -*-
require 'ruby-fillform'
data = {}
data[:page_1] = {}
data[:page_1][:name] = { :value => "Josue Merlos" }
data[:page_1][:address] = {:value => "My address" }
data[:page_1][:text_here] = {:value => "Red text is here"}
data[:page_1][:more_text] = {:value => "Font size=10 is here"}
# Page number optional, substitute lastname var in all pages
data[:lastname] = { :value => "Merlos" }

Prawn::Document.generate "data/output.pdf", template: 'data/template.pdf'  do |pdf|
  pdf.fill_form_with(data)
end

