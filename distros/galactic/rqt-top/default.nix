
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-galactic-rqt-top";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_top-release/archive/release/galactic/rqt_top/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "93fb0e859fa1bf14fdd96fbe50c76071d70d59ab5f487292dfeaa59aaf7d782f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.psutil rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
