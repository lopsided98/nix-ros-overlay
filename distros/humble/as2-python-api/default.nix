
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-pymap3d, action-msgs, ament-copyright, ament-flake8, ament-pep257, as2-motion-reference-handlers, as2-msgs, geographic-msgs, geometry-msgs, nav-msgs, python3Packages, rclpy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-python-api";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_python_api/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "863b002c3c1a3e1cb60b819b8e7780ee687585efd4a30f35bc13469f9fb22e2f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ _unresolved_python3-pymap3d action-msgs as2-motion-reference-handlers as2-msgs geographic-msgs geometry-msgs nav-msgs python3Packages.pydantic rclpy sensor-msgs std-srvs ];

  meta = {
    description = "AeroStack2 drone interface tool in python";
    license = with lib.licenses; [ bsd3 ];
  };
}
