
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-bag-plugins";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/noetic/rqt_bag_plugins/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "b6bfae17347d4d64fa1b40bc3663d4cb4a8fef9de8aa2b1e3138c4394561b6cb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
