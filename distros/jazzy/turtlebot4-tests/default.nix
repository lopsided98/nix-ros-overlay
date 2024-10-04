
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, python3Packages, pythonPackages, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-tests";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/jazzy/turtlebot4_tests/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6b8d9c60e5d09ab6d752b84e67c73332b65b5a1e57b72786b80fbc34437b582d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs python3Packages.psutil sensor-msgs std-msgs turtlebot4-msgs ];

  meta = {
    description = "Turtlebot4 System Tests";
    license = with lib.licenses; [ asl20 ];
  };
}
