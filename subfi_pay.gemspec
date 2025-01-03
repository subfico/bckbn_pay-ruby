# -*- encoding: utf-8 -*-

=begin
#SubFi Pay API

#API for SubFi Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "subfi_pay/version"

Gem::Specification.new do |s|
  s.name        = "subfi_pay"
  s.version     = SubfiPay::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = [""]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "SubFi Pay API Ruby Gem"
  s.description = "API for SubFi Pay services"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
