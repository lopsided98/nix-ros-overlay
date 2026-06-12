{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-package-selection";
  version = "0.2.10";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-27Kk1l/Zvc18d4EfFPdUR/yeCS9fU1VJuHglyjPwnh0=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to select a subset of packages for processing";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
