
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-joy-tester";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/iron/joy_tester/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "0de60909f1dd38704f3dad62c79fa67bd5f5bebbf72f4623ad65ac4259d495ea";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = ''Simple GUI tool for testing joysticks/gamepads'';
    license = with lib.licenses; [ asl20 ];
  };
}
