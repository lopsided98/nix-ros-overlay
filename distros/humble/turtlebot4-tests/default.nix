
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, irobot-create-msgs, python3Packages, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-tests";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_tests/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "90ccfba39518e6324d3bd63e0c01fa05c3f5682050a465810bcb480320ac7eb4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ irobot-create-msgs python3Packages.psutil sensor-msgs std-msgs turtlebot4-msgs ];

  meta = {
    description = "Turtlebot4 System Tests";
    license = with lib.licenses; [ asl20 ];
  };
}
