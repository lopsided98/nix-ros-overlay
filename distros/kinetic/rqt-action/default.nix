
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-kinetic-rqt-action";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_action-release/archive/release/kinetic/rqt_action/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "ccd9349bd5eec39ff064b6d4beb24acac44e1a470ab599b8b508507eeac2d2ef";
  };

  buildType = "catkin";
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
