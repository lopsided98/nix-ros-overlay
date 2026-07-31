
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-tecgihan-driver";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/tecgihan/tecgihan_driver-release/archive/release/jazzy/tecgihan_driver/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "62fc2dc0f71ee379b5bb039135a061bd6939d62b55004e4fdba05c2a905ecd4e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyserial rclpy robot-state-publisher rviz2 xacro ];

  meta = {
    description = "Linux and ROS driver software for Tec Gihan sensor amplifiers for robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
