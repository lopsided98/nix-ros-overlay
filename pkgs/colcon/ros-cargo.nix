{
  lib,
  buildPythonPackage,
  fetchPypi,
  colcon-core,
  colcon-library-path,
  colcon-cargo,
  colcon-ros,
}:

buildPythonPackage rec {
  pname = "colcon-ros-cargo";
  version = "0.2.0";

  src = fetchPypi {
    pname = "colcon_ros_cargo";
    inherit version;
    hash = "sha256-70taCMJRPSq2CPvO5aqudsc8RN0l194vLbT1UZWXfU8=";
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
