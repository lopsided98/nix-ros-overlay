{ lib, buildPythonPackage, fetchPypi, isPy27, colcon-core }:

buildPythonPackage rec {
  pname = "colcon-package-information";
  version = "0.3.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "2wsSAL/skfzzltnXZx60EPDrWhiggZ93jzNeusguC54=";
  };

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  disabled = isPy27;

  meta = with lib; {
    description = "An extension for colcon-core to output package information.";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ ];
  };
}
