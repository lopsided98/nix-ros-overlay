
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-bag-plugins";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/noetic/rqt_bag_plugins/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "c758ecb338b386cb2deae24a077a07a02b10b03397e4b53cb13d0d0f7dad9f8f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
