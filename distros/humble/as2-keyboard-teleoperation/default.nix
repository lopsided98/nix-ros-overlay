
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-motion-reference-handlers, as2-python-api, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-as2-keyboard-teleoperation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_keyboard_teleoperation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "46d5bde651afbd1f3c374e6f2e9a1a264b6aa5415ef7c18bebf6dee506954359";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-motion-reference-handlers as2-python-api rclpy ];

  meta = {
    description = "Keyboard Teleoperation";
    license = with lib.licenses; [ bsd3 ];
  };
}
