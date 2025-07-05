{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-package-information";
  version = "0.4.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-IPUYSuGwXbCnbyRLyFYi9rJeSO9zmPVXhMz+RV1AvPs=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to output package information";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
