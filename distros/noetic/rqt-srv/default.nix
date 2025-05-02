
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosmsg, rospy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-noetic-rqt-srv";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_srv-release/archive/release/noetic/rqt_srv/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "bb9271767ee2a7569879c76157e89541c18fa218126644b91d03ee96fefcfb25";
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
