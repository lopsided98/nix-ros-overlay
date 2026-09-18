{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, pyyaml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-metadata";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-y379Bv7dWQKq7wYGd3sm+41iCOiS3qRHg0kYQRPenkU=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    pyyaml
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to fetch and manage package metadata from repositories";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
