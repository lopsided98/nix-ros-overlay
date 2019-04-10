
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rosbag, rqt-gui, pythonPackages, sensor-msgs, catkin, rqt-bag, std-msgs, rospy, rqt-plot, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-bag-plugins";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_bag-release/archive/release/lunar/rqt_bag_plugins/0.4.12-0.tar.gz;
    sha256 = "2a61a2d5eb9d75f942209f18d0a076015a81e3695b1e0bd636f4042e518aad36";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.pycairo rqt-plot rosbag rqt-gui sensor-msgs rqt-bag rospy std-msgs pythonPackages.pillow roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    #license = lib.licenses.BSD;
  };
}
