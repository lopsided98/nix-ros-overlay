
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy-tester";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/rolling/joy_tester/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "d7451396586ad6167ed539eb702e35b9bc0c6f10d0a43727a5e49003dd43da44";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = ''Simple GUI tool for testing joysticks/gamepads'';
    license = with lib.licenses; [ asl20 ];
  };
}
