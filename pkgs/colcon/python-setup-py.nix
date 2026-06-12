{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-python-setup-py";
  version = "0.2.9";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-N+OL0rSoWwZZioMV9JRvrQHdahE3fY7kKjfflUiRVL8=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core setuptools ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to identify packages from setup.py files";
    longDescription = ''
      An extension for colcon-core to identify packages with a setup.py file by
      introspecting the arguments to the setup() function call of setuptools.
    '';
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
