
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-tecgihan-driver";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/tecgihan/tecgihan_driver-release/archive/release/humble/tecgihan_driver/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "e60b276810e0a75bc839793058e1da41445d71a565bf75ae732fbef99fe2ef15";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyserial rclpy robot-state-publisher rviz2 xacro ];

  meta = {
    description = "Linux and ROS driver software for Tec Gihan sensor amplifiers for robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
