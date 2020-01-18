
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-eloquent-rqt-action";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/eloquent/rqt_action/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cbba2e7c6120cf6031cbae07aee31ae9d868ebe01672ddfe87b8108ea28715c8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rclpy rqt-gui rqt-gui-py rqt-msg rqt-py-common ];

  meta = {
    description = ''rqt_action provides a feature to introspect all available ROS
  action types. By utilizing rqt_msg, the output format is
  unified with it and rqt_srv. Note that the actions shown on this plugin
  is the ones that are stored on your machine, not on the ROS core your rqt
  instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
