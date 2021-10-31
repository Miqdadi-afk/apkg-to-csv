require_relative 'lib/apkg_to_csv/version'

Gem::Specification.new do |spec|
  spec.name          = 'apkg-to-csv'
  spec.version       = ApkgToCsv::VERSION
  spec.authors       = ['zfletch']
  spec.email         = ['zf.rubygems@gmail.com']

  spec.summary       = 'Convert Anki deck (.apkg) files to comma-separated values (.csv) files.'
  spec.homepage      = 'https://github.com/zfletch/apkg-to-csv'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubyzip', '~> 2.3.0'
  spec.add_dependency 'sqlite3', '~> 1.4.2'
end
