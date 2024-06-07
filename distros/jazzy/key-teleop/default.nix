
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-key-teleop";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/key_teleop/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "25c4652b6e83f2cf0954b7cc42af57414e2c4a3f924d77d39df04f3d977dd267";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "A text-based interface to send a robot movement commands.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
