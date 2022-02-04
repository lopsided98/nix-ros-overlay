
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-action";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/galactic/rqt_action/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "17354690c93e7ef1decdc43d3ccfd382e78fb3aeafb0f45cc34d7c4ac4f157d7";
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
