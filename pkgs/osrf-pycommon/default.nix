{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  wheel,
}:

buildPythonPackage rec {
  pname = "osrf_pycommon";
  version = "2.1.7";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "osrf";
    repo = "osrf_pycommon";
    rev = version;
    hash = "sha256-gKYeCvcJDJkW2OYP7K3eyztuPSkzE8dHoTUh4sKvxcM=";
  };

  build-system = [
    setuptools
    wheel
  ];

  pythonImportsCheck = [
    "osrf_pycommon"
  ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF";
    homepage = "https://github.com/osrf/osrf_pycommon";
    changelog = "https://github.com/osrf/osrf_pycommon/blob/${src.rev}/CHANGELOG.rst";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ wentasah ];
  };
}
