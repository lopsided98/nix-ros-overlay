
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-motion-reference-handlers, as2-python-api, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-as2-keyboard-teleoperation";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_keyboard_teleoperation/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "50bcbad646fee20dc1006921b62af74067a33dfef2fe0ff4ac03587de7ce2e54";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ as2-motion-reference-handlers as2-python-api rclpy ];

  meta = {
    description = "Keyboard Teleoperation";
    license = with lib.licenses; [ bsd3 ];
  };
}
