
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, python3Packages, rqt-py-common, ament-cmake, rqt-console, rqt-gui-py, rclpy, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-msg";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/dashing/rqt_msg/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "48ecc630667324b011653f68b54699c5e345aaa5f6cb2321243e5f97a7339ff0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui rqt-py-common rqt-console rqt-gui-py rclpy python3Packages.catkin-pkg python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
