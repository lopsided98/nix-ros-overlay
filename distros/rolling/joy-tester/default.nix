
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy-tester";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/rolling/joy_tester/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "f680fbcdd6003b656e6cc540f1a1c6c6caaf2d586d61efe5bc5a90a99430a020";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = ''Simple GUI tool for testing joysticks/gamepads'';
    license = with lib.licenses; [ asl20 ];
  };
}
