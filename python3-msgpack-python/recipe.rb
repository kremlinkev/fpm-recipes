class PythonNeovim < FPM::Cookery::PythonRecipe
  name       'msgpack-python'
  version    '0.5.1'
  revision   '1'
  homepage   'http://msgpack.org'
  maintainer 'Dave Wongillies <dave.gillies@gmail.com>'
  license    'Apache-2.0'

  build_depends 'python3-setuptools', 'python3-pip'
  depends       'python3'

  fpm_attributes \
    :python_bin                 => 'python3',
    :python_pip                 => 'pip3',
    :python_package_name_prefix => 'python3',
    :python_setup_py_arguments  => ['--prefix', '/usr']
end