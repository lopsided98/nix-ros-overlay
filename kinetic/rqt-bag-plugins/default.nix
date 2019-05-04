
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rosbag, rqt-gui, pythonPackages, sensor-msgs, catkin, rqt-bag, std-msgs, rospy, rqt-plot, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-bag-plugins";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_bag-release/archive/release/kinetic/rqt_bag_plugins/0.4.12-0.tar.gz;
    sha256 = "dbf1aa60f502ced8268a2c73284457836da3963690f7565489c9a06d0834eef0";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.pycairo rqt-plot rosbag rqt-gui sensor-msgs rqt-bag rospy std-msgs pythonPackages.pillow roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
