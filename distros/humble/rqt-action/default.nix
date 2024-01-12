
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-action";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/humble/rqt_action/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "12112e90139283eeecf37fd61d55dd7a1254eeb3c394271e9d5134b7dc8237fe";
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
