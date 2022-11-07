{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, colcon-library-path
, colcon-cargo, colcon-ros }:

buildPythonPackage rec {
  pname = "colcon-ros-cargo";
  version = "unstable-2022-05-23";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    rev = "73289b2d4019432461180a0bcdf00cd7dead79f0";
    hash = "sha256-UJEP8f/Lz5OWgEKYju0ZvCxupIaGXTYz6zbdEYLqJGc=";
  };

  propagatedBuildInputs = [
    colcon-core
    colcon-library-path
    colcon-cargo
    colcon-ros
  ];

  # Requires unpackaged dependencies
  doCheck = false;

  meta = with lib; {
    description = "Build cargo projects with colcon.";
    homepage = "https://github.com/colcon/colcon-ros-cargo";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
