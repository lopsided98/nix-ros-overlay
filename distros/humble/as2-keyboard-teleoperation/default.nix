
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-motion-reference-handlers, as2-python-api, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-as2-keyboard-teleoperation";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_keyboard_teleoperation/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "fa4e3eac684b70790fb534912b4cb8c7c270960a56a727fc1b07d8c468bfbc43";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-motion-reference-handlers as2-python-api rclpy ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ bsd3 ];
  };
}
