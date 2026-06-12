{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, colcon-library-path
, colcon-cargo, colcon-ros, setuptools, cargo-ament-build }:

buildPythonPackage rec {
  pname = "colcon-ros-cargo";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = "v${version}";
    hash = "sha256-79HsQk5F+Vkx3GafdX08YBQLrBv4dxBmWtdexDDqGbU=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    colcon-library-path
    colcon-cargo
    colcon-ros
    cargo-ament-build
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Build cargo projects with colcon";
    homepage = "https://github.com/colcon/colcon-ros-cargo";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
