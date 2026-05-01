
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-joy-tester";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/lyrical/joy_tester/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "88322351425e4d7084ee71cf97579568c04dc41da9600cc95b72f0384124e37f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = "Simple GUI tool for testing joysticks/gamepads";
    license = with lib.licenses; [ asl20 ];
  };
}
