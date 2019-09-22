Pod::Spec.new do |s|
  s.name             = 'MonetaryAmount'
  s.version          = '1.1.0'
  s.summary          = 'A Swift representation of Money and ISO 4217 Currencies and the manipulation of them'

  s.description      = <<-DESC
A Swift representation of money / monetary amounts and ISO 4217 currency designations. Supports manipulation
and combination of monetary amounts of a single or multiple currency. Handles minor units (the exponent, e.g. cents for USD)
for each currency as specified in the ISO 4217 standard. Simple manipulation includes consolidating / combining 
amounts. For example with MonetaryAmount, GBP10.50 + USD5.70 + GBP6.50 + USD8.10 consolidated would result in 
GBP17.00 and USD13.80. MonetaryAmount does not do any FX or conversion of currencies, it keeps each individual 
currency subtotal separate.
                       DESC

  s.homepage         = 'https://github.com/SoftwareEngineerChris/MonetaryAmount'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SoftwareEngineerChris' => '4376956+SoftwareEngineerChris@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/SoftwareEngineerChris/MonetaryAmount.git', :tag => s.version.to_s }

  s.dependency 'RoundedDecimal', '~> 2.2.0'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target = '10'
  s.swift_version = '5.0'

  s.source_files = 'Sources/MonetaryAmount/*'
end
