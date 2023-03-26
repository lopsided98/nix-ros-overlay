{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core, pyyaml }:

buildPythonPackage rec {
  pname = "colcon-defaults";
  version = "0.2.8";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-BT6KGPuuBM8YKilo1/ftR0xRJb87MGuASSUFdPQJb6E=";
  };

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to provide custom default values for the command line arguments from a configuration file.";
    homepage = "https://colcon.readthedocs.io/en/released/user/configuration.html#defaults-yaml";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
