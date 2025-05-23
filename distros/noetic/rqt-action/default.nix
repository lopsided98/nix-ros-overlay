
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-action";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_action-release/archive/release/noetic/rqt_action/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "d966141aaa78e96f3b205681a392aa35bf349ca0f0c06cee2230b405416e217b";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rospy rqt-msg rqt-py-common ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_action provides a feature to introspect all available ROS
  action (from actionlib) types. By utilizing rqt_msg, the output format is
  unified with it and rqt_srv. Note that the actions shown on this plugin
  is the ones that are stored on your machine, not on the ROS core your rqt
  instance connects to.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
