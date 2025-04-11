
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosmsg, rospy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-noetic-rqt-srv";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_srv-release/archive/release/noetic/rqt_srv/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "30cdc2f1e4a6db48a5eaa3b4a96007850b691c2e1ab80049fd8971f34dfee704";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rosmsg rospy rqt-gui rqt-gui-py rqt-msg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
