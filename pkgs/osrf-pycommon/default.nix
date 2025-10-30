{ lib, buildPythonPackage, fetchPypi, setuptools }:

buildPythonPackage rec {
  pname = "osrf_pycommon";
  version = "2.0.2";

  pyproject = true;
  build-system = [ setuptools ];

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-kSMGaW5ZqtNGmOKfS4MjJwRjBjRJmcMfGQB/wouZrfA=";
  };

  # No tests in PyPi tarball
  doCheck = false;
  pythonImportsCheck = [ "osrf_pycommon" ];

  meta = with lib; {
    description = "Commonly needed Python modules, used by Python software developed at OSRF";
    homepage = "https://github.com/osrf/osrf_pycommon";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
