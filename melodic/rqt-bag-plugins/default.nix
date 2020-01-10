
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rosbag, roslib, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-bag-plugins";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/melodic/rqt_bag_plugins/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "03951bd0c5ee306b14adec3e97a71804e35aed94d2d7a135c0cea5fb58cf87c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.pillow pythonPackages.pycairo rosbag roslib rospy rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
