
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmsg, rospy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-noetic-rqt-srv";
  version = "0.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_srv-release/archive/release/noetic/rqt_srv/0.4.8-1.tar.gz";
    name = "0.4.8-1.tar.gz";
    sha256 = "a920e60e6ed33e1c017689e7807d8aa43517a50a290c41c8855ddeb78453f6fe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosmsg rospy rqt-gui rqt-gui-py rqt-msg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
