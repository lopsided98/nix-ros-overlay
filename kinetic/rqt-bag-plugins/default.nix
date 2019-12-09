
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, rqt-plot, std-msgs, pythonPackages, catkin, roslib, rqt-gui-py, rosbag, rospy, rqt-bag }:
buildRosPackage {
  pname = "ros-kinetic-rqt-bag-plugins";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/kinetic/rqt_bag_plugins/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "dbf1aa60f502ced8268a2c73284457836da3963690f7565489c9a06d0834eef0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui sensor-msgs geometry-msgs rqt-plot pythonPackages.pycairo std-msgs pythonPackages.pillow roslib rqt-gui-py rosbag rospy rqt-bag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
