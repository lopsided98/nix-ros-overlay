{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, pyyaml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-defaults";
  version = "0.2.9";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-Nb6D9jpbCvUnCNgRLBgWQFybNx0hyWVLSKj6gmTWjVs=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # No tests
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide custom default values for the command line arguments from a configuration file";
    homepage = "https://colcon.readthedocs.io/en/released/user/configuration.html#defaults-yaml";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
