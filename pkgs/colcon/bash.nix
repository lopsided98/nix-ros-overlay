{
  lib,
  buildPythonPackage,
  fetchPypi,
  colcon-core,
}:

buildPythonPackage rec {
  pname = "colcon-bash";
  version = "0.5.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-KaIjpmgo4Yqtm421CH9xFOOIYBgwCRgwyhewla2iy6w=";
  };

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to provide Bash scripts.";
    homepage = "https://github.com/colcon/colcon-bash";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
