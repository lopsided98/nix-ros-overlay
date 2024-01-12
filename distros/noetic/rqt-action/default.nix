
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-action";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_action-release/archive/release/noetic/rqt_action/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "86d32021ce58ab1d2624157c728e664bcb7345bb055b1388f0d2f4b9045af03b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rqt-msg rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_action provides a feature to introspect all available ROS
  action (from actionlib) types. By utilizing rqt_msg, the output format is
  unified with it and rqt_srv. Note that the actions shown on this plugin
  is the ones that are stored on your machine, not on the ROS core your rqt
  instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
