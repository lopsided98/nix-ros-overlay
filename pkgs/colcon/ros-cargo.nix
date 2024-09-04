{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-library-path
, colcon-cargo, colcon-ros }:

buildPythonPackage rec {
  pname = "colcon-ros-cargo";
  version = "0.1.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-gwNvMVyG+rbXFNPUOEFalrYE+CLNrhyRQT4Lb+Rfhhw=";
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
