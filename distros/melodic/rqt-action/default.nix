
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-msg, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-action";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_action-release/archive/release/melodic/rqt_action/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "5ac33f2d857d43c2c79f82f73070f6dec9bf326ea6bc0b3bce4e49c3d5b8c7d8";
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
