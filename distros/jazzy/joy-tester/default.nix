
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-joy-tester";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/jazzy/joy_tester/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "d3390ef53c33d22bef2267beee5e3530c72579af94c7461de2676e757ec2607c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = "Simple GUI tool for testing joysticks/gamepads";
    license = with lib.licenses; [ asl20 ];
  };
}
