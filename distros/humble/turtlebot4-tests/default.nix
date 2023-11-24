
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, python3Packages, pythonPackages, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-tests";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_tests/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f78afdf9bce90da7b88451e1b435988774c9d47c73819a3739ae2852f1fdd74f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs python3Packages.psutil sensor-msgs std-msgs turtlebot4-msgs ];

  meta = {
    description = ''Turtlebot4 System Tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
