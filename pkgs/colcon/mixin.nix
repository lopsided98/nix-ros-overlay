{ lib, buildPythonPackage, fetchPypi, colcon-core, pyyaml }:

buildPythonPackage rec {
  pname = "colcon-mixin";
  version = "0.2.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-4MNJz3sHCWEohm7BD6UI41QA2yCP7LvrhqVKsaHUnuk=";
  };

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to read CLI mixins from files.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
