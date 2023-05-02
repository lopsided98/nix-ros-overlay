
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, as2-motion-reference-handlers, as2-python-api, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-as2-keyboard-teleoperation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_keyboard_teleoperation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2fbc3d25ea63074664f0ed33ac4a0d1310bc359dfb2a57b62a700b466cd0a08c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-motion-reference-handlers as2-python-api rclpy ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ bsd3 ];
  };
}
