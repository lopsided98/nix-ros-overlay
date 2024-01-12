
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmsg, rospy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-noetic-rqt-srv";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_srv-release/archive/release/noetic/rqt_srv/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "a6bf6dba3326ed7d75d4f4ac1cedb2e162714721b7bba6141bf27dea2086ebcb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosmsg rospy rqt-gui rqt-gui-py rqt-msg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
