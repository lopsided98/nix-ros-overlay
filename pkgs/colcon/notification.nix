{ lib, buildPythonPackage, fetchPypi, colcon-core, notify2, setuptools }:

buildPythonPackage rec {
  pname = "colcon-notification";
  version = "0.3.1";

  src = fetchPypi {
    inherit version;
    pname = "colcon_notification";
    hash = "sha256-z/1iAk2PWn90KwwZGkTJZ6R5+TbdsSk0q9acDPYk4TY=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core notify2 ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide status notifications";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
