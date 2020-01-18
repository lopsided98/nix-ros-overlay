
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-crystal-rqt-top";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_top-release/archive/release/crystal/rqt_top/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "64d8df02dbd0b780950cf5bf408506d0d16c070ea0709ed521369492941342dc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python-qt-binding python3Packages.psutil rclpy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
