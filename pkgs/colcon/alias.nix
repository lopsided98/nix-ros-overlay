{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  wheel,
  colcon-core,
  filelock,
  pyyaml,
  flake8,
  flake8-blind-except,
  # flake8-builtins,
  flake8-class-newline,
  # flake8-comprehensions,
  flake8-deprecated,
  flake8-docstrings,
  flake8-import-order,
  flake8-quotes,
  pep8-naming,
  pylint,
  pytest,
  pytest-cov,
  # scspell3k,
}:

buildPythonPackage rec {
  pname = "colcon-alias";
  version = "0.1.1";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-DlUoQ4BgeO7YX2spAj+1SOJweDfYpIyQ+9aal+d9TQM=";
  };

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    colcon-core
    filelock
    pyyaml
  ];

  optional-dependencies = {
    test = [
      flake8
      flake8-blind-except
      # flake8-builtins
      flake8-class-newline
      # flake8-comprehensions
      flake8-deprecated
      flake8-docstrings
      flake8-import-order
      flake8-quotes
      pep8-naming
      pylint
      pytest
      pytest-cov
      # scspell3k
    ];
  };

  pythonImportsCheck = [
    "colcon_alias"
  ];

  meta = {
    description = "Extension for colcon to create and modify command aliases";
    homepage = "https://pypi.org/project/colcon-alias/";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ wentasah ];
  };
}
