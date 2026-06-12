{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
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
  pname = "colcon-rerun";
  version = "0.1.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-Wg4VFcvvmN2PitI6axk6M5ZiNsQvGQ/isVR3CQn2B9g=";
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
    "colcon_rerun"
  ];

  meta = {
    description = "Extension for colcon to quickly re-run a recently executed verb";
    homepage = "https://pypi.org/project/colcon-rerun/";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ wentasah ];
  };
}
