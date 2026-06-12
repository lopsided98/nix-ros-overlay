{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-cd }:

buildPythonPackage rec {
  pname = "colcon-cd";
  version = "0.1.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-PnCjK30WuBanxyGCvbIN+YX/wBZ47Jxn1EZZgUphmH0=";
  };

  propagatedBuildInputs = [ colcon-core colcon-cd ];

  doCheck = false;

  meta = with lib; {
    description = "A shell function for colcon-core to change the current working directory";
    homepage = "https://github.com/colcon/colcon-cd";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
