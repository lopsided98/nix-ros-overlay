{
  lib,
  buildPythonPackage,
  fetchPypi,
  colcon-core,
  argcomplete,
}:

buildPythonPackage rec {
  pname = "colcon-argcomplete";
  version = "0.3.3";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-PnCjK30WuBanxyGCvbIN+YX/wBZ47Jxn1EZZgUphmH0=";
  };

  propagatedBuildInputs = [
    colcon-core
    argcomplete
  ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to provide command line completion using argcomplete.";
    homepage = "https://github.com/colcon/colcon-argcomplete";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
