
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, rclpy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-msg";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/humble/rqt_msg/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "06f1fc27c2c29f722a662aa1dc132540b9f002e3e157e72402da0b0835133fd2";
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
