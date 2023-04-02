{ lib, buildPythonPackage, fetchPypi, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-package-information";
  version = "0.3.3";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-2wsSAL/skfzzltnXZx60EPDrWhiggZ93jzNeusguC54=";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "An extension for colcon-core to output package information.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
