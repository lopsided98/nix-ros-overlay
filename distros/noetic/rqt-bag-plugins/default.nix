
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-bag-plugins";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/noetic/rqt_bag_plugins/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0a79f66d0f2f1eea4e5aa1f8ce9070d06ac7e3b3ce90cf683da9d77a7d1596c4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
