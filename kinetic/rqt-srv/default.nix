
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rosmsg, rqt-gui, rqt-msg, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rqt-srv";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_srv-release/archive/release/kinetic/rqt_srv/0.4.8-0.tar.gz;
    sha256 = "cb789c7d969ed56335b19a75ca8d20918953ed5bbb1a3f978b593b0900f7e6b9";
  };

  propagatedBuildInputs = [ rqt-gui-py rqt-gui rosmsg rqt-msg rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
