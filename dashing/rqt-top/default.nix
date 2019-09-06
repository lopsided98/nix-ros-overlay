
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, rclpy, rqt-gui, python3Packages, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-top";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_top-release/archive/release/dashing/rqt_top/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e4bfd6084161203df4526743dfaeba8efe7091ded929d010de3c6f4c96bf1a15";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui-py rclpy python3Packages.psutil rqt-gui python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
