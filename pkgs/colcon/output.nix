{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-output";
  version = "0.2.15";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-kRMe4cg7ZUHAHdbyopJK61XQn7mPKpmbHj+qisrGO1E=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to customize the output in various ways";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
