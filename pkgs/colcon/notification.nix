{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, notify2, setuptools }:

buildPythonPackage rec {
  pname = "colcon-notification";
  version = "0.3.3";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-5cnuUVHHjn85RMz9r24/zRQdvDt+JETAWOW1Fw6WEtM=";
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
