
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, rclpy, rqt-gui, rqt-console, python3Packages, rqt-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-crystal-rqt-msg";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_msg-release/archive/release/crystal/rqt_msg/1.0.1-0.tar.gz;
    sha256 = "60afac52d8e0054ba07516357ddf272edea74802ee7b779ed0c89a9d39cd88fd";
  };

  propagatedBuildInputs = [ rqt-gui-py python3Packages.catkin-pkg rclpy rqt-gui rqt-console rqt-py-common python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
