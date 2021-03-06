class PythonNeovim < FPM::Cookery::PythonRecipe
  name       'neovim'
  version    '0.2.4'
  revision   '2'
  homepage   'https://github.com/neovim/python-client'
  maintainer 'Dave Wongillies <dave.gillies@gmail.com>'
  license    'Apache-2.0'

  description 'Python client to neovim'

  build_depends 'python3-setuptools', 'python3-pip'
  depends       'python3'

  chain_package true
  chain_recipes 'msgpack'

  fpm_attributes \
    :python_bin                 => 'python3',
    :python_pip                 => 'pip3',
    :python_package_name_prefix => 'python3',
    :python_setup_py_arguments  => [
      '--prefix', '/usr',
      '--install-layout', 'deb'
    ]
end
