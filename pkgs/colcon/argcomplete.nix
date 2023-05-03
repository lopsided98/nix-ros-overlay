{ lib, buildPythonPackage, fetchPypi, colcon-core, python3Packages }:

buildPythonPackage rec {
  pname = "colcon-argcomplete";
  version = "0.3.3";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-PnCjK30WuBanxyGCvbIN+YX/wBZ47Jxn1EZZgUphmH0=";
  };

  propagatedBuildInputs = [ colcon-core python3Packages.argcomplete ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to provide command line completion using argcomplete.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
