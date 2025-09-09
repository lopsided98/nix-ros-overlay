
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-bag-plugins";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/noetic/rqt_bag_plugins/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "2fdc250070be162c067b5e9fa33ad314495a7cb39e2e5c0517e7d6af937f316a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
