{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-output";
  version = "0.2.14";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-Zt8ZG2SZAgS1iXMnu3b2dSoP9IzrwLwMUXVSJWqRV9w=";
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
