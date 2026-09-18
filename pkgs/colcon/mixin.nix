{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, pyyaml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-mixin";
  version = "0.3.2";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-sSfJSLZVCIQRFj9Z3au/j+W6uFU3FKhnIBMk1HYgvTM=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to read CLI mixins from files";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
