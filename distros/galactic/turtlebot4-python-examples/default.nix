
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, turtlebot4-base, turtlebot4-bringup, turtlebot4-description, turtlebot4-diagnostics, turtlebot4-msgs, turtlebot4-navigation, turtlebot4-node }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-python-examples";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_examples-release/archive/release/galactic/turtlebot4_python_examples/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "bed3ba8cdb32df55bbc88bc6125d05bfbf63b2bb567e095a07d0d3def3c74b1b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ turtlebot4-base turtlebot4-bringup turtlebot4-description turtlebot4-diagnostics turtlebot4-msgs turtlebot4-navigation turtlebot4-node ];

  meta = {
    description = ''TurtleBot 4 Python Examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
