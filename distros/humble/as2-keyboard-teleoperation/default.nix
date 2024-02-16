
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-motion-reference-handlers, as2-python-api, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-as2-keyboard-teleoperation";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_keyboard_teleoperation/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "4dad4aefdea5724ab2b2c99d4dbfc1c280723a5de40a4abc798b0ebbeed0f29f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-motion-reference-handlers as2-python-api rclpy ];

  meta = {
    description = ''Keyboard Teleoperation'';
    license = with lib.licenses; [ bsd3 ];
  };
}
