# frozen_string_literal: true

require_relative "lib/template/version"

Gem::Specification.new do |spec|
  spec.name          = "template"
  spec.version       = Template::VERSION
  spec.authors       = ["Panorama Education"]
  spec.email         = ["engineering@panoramaed.com"]

  spec.summary       = "Write a description here!"
  spec.homepage      = "https://github.com/panorama-ed/template"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
