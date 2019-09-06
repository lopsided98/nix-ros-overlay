
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rclpy, rqt-gui, rqt-msg, rqt-py-common, python-qt-binding }:
buildRosPackage rec {
  pname = "ros-dashing-rqt-action";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_action-release/archive/release/dashing/rqt_action/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "967bf2d58e6f5484e6bf88447ff1a0f050e737054734cf5e29eb830f41ee6433";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py rclpy rqt-gui rqt-msg rqt-py-common python-qt-binding ];

  meta = {
    description = ''rqt_action provides a feature to introspect all available ROS
  action types. By utilizing rqt_msg, the output format is
  unified with it and rqt_srv. Note that the actions shown on this plugin
  is the ones that are stored on your machine, not on the ROS core your rqt
  instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
