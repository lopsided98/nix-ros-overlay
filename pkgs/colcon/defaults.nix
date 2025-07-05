{ lib, buildPythonPackage, fetchPypi, colcon-core, pyyaml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-defaults";
  version = "0.2.9";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-sPPMkAYmkGpGrp7lNB94sjeQjflXKhDlfQ8EHZRriOM=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # No tests
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide custom default values for the command line arguments from a configuration file";
    homepage = "https://colcon.readthedocs.io/en/released/user/configuration.html#defaults-yaml";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
