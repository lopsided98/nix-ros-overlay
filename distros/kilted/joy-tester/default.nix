
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-joy-tester";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/kilted/joy_tester/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "4900b672a864dc0eb000b2653fedf233d512e41b9b260ec8b328e3c6b0a9f4ef";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = "Simple GUI tool for testing joysticks/gamepads";
    license = with lib.licenses; [ asl20 ];
  };
}
