{ lib, buildPythonPackage, fetchPypi, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-package-information";
  version = "0.4.1";

  src = fetchPypi {
    inherit version;
    pname = "colcon_package_information";
    hash = "sha256-TgFDzAKIKAtf11rafHX2l4V9aU/0imjab8wXi2/7JyY=";
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
