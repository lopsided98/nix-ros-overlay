
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-joy-tester";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/humble/joy_tester/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "0e663654e883e6f52e014662f3dac7b14bed2acf78cc4b1358a34b85321c348d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = ''Simple GUI tool for testing joysticks/gamepads'';
    license = with lib.licenses; [ asl20 ];
  };
}
