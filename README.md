# ruby-fillform example
It is a gem that can fill PDF forms using ruby.

# Install
$ gem install ruby-fillform

# Usage
Create a PDF form with LibreOffice or something else. I have only tested this with LibreOffice.
Currently only text fields, check box and buttons are supported.


```ruby
require 'ruby-fill-form'

data = {}
data[:page_1] = {}
data[:page_1][:name] = { :value => "Josue Merlos" }
data[:page_1][:address] = { :value => "My Address" }

# Page number optional, substitute lastname var in all pages, thanks to hoverlover
data[:lastname] = { :value => "Merlos" }

# Create a PDF file with predefined data Fields
Prawn::Document.generate "output.pdf", :template => "template.pdf"  do |pdf|
  pdf.fill_form_with(data)
end
```

#And on a per-form basis

See the :options param below

```ruby
require 'ruby-fill-form'

data = {}
data[:page_1] = {}
data[:page_1][:name] = { :value => "Josue Merlos", :options => {:x_offset => 2, :y_offset => -40} }
data[:page_1][:address] = { :value => "My Address" }

# Create a PDF file with predefined data Fields
Prawn::Document.generate "output.pdf", :template => "template.pdf"  do |pdf|
  pdf.fill_form_with(data)
end
```
