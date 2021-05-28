
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-msg";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/galactic/rqt_msg/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "5bdcc03005f50232d03cfb18458aa6814d55779ab5a76a1638c84c360f4fd653";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg rclpy rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
