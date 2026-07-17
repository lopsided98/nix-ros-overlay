{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, colcon-library-path, meson, setuptools }:

buildPythonPackage rec {
  pname = "colcon-meson";
  version = "0.6.1";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-Gs0Y6hXs5kBjKsXnARNXyWD6yw3aAJ5WhRZcBl7e/pA=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    colcon-library-path
    meson
  ];

  meta = with lib; {
    description = "Extension for colcon to support Meson packages";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
