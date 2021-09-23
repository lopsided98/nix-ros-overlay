{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core, notify2 }:

buildPythonPackage rec {
  pname = "colcon-notification";
  version = "0.2.13";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-aq4f/nOulWvLNuMwgizSMKKojJGBsxcKr9GkRmOOabM=";
  };

  propagatedBuildInputs = [ colcon-core notify2 ];

  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to provide status notifications.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
