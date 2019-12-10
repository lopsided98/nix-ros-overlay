
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python-qt-binding, python3Packages, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-eloquent-rqt-msg";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/eloquent/rqt_msg/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d28981e5357a39eca9fc9ae14f507c0784f6818ab741334542528a34dea1c24d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
