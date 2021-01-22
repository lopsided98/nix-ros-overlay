
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-bag-plugins";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/kinetic/rqt_bag_plugins/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a4a6c826d51a7a4d2b79ee1db4f385bb4522c1a6e6c2ad27a61c56c4b9d6afa1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.pillow pythonPackages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
