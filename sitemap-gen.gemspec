# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sitemap_gen/version'

Gem::Specification.new do |spec|
  spec.name          = "sitemap_gen"
  spec.version       = SitemapGen::VERSION
  spec.authors       = ["Minh Phan"]
  spec.email         = ["wofi.minh@1pac.vn"]

  spec.summary       = %q{A generator sitemap based on directory structure}
  spec.homepage      = "https://github.com/1PACVietnam/sitemap-gen"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir.glob("{bin,lib}/**/*")
  spec.bindir        = "bin"
  spec.executables   = ["sitemap-gen"]
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.8", ">= 1.6"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 9.0"
end
