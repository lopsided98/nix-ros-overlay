
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rqt-gui, rqt-gui-py, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-action";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/crystal/rqt_action/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "7238fa8bf233b4f674088d5229026c07a0e8de91de6183897e92be1786d86b9a";
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
