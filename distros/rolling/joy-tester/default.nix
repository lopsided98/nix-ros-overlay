
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy-tester";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/rolling/joy_tester/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "107a3de56449518b764f5cb4841358fc3861542dc59f209db4de1639c2f40a19";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = ''Simple GUI tool for testing joysticks/gamepads'';
    license = with lib.licenses; [ asl20 ];
  };
}
