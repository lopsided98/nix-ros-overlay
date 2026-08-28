{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, pyyaml, setuptools }:

buildPythonPackage rec {
  pname = "colcon-mixin";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-MLK8ogTzlqi/5wgrS0gh9fm/oljk4BGvJwI9JrYj//M=";
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
    description = "Extension for colcon-core to read CLI mixins from files";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
