
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-bag-plugins";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/melodic/rqt_bag_plugins/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "ca99407bcee6772429093e5a980a88a8c5b0f71ebd2166bd7ab0feb574e2084e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.pillow pythonPackages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
