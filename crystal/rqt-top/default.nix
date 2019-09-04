
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, rclpy, rqt-gui, python3Packages, python-qt-binding }:
buildRosPackage {
  pname = "ros-crystal-rqt-top";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_top-release/archive/release/crystal/rqt_top/1.0.0-0.tar.gz;
    sha256 = "64d8df02dbd0b780950cf5bf408506d0d16c070ea0709ed521369492941342dc";
  };

  propagatedBuildInputs = [ rqt-gui-py rclpy python3Packages.psutil rqt-gui python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
