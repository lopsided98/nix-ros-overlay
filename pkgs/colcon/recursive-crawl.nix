{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-recursive-crawl";
  version = "0.2.3";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-zmmEelMjsIbXy5LchZMtr2+x+Ne2c2PhexLjbkZJmm8=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to recursively crawl for packages";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
