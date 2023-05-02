
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, python3Packages, pythonPackages, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-tests";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_tests/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a0e9e4f22b8b5e2dd0c673dbe2a458d20743c2d03e9fe1438ba0465708390d92";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs python3Packages.psutil sensor-msgs std-msgs turtlebot4-msgs ];

  meta = {
    description = ''Turtlebot4 System Tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
