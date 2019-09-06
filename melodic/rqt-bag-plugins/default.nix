
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rosbag, rqt-gui, pythonPackages, sensor-msgs, catkin, rqt-bag, std-msgs, rospy, rqt-plot, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-bag-plugins";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/melodic/rqt_bag_plugins/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "03951bd0c5ee306b14adec3e97a71804e35aed94d2d7a135c0cea5fb58cf87c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.pycairo rqt-plot rosbag rqt-gui sensor-msgs rqt-bag rospy std-msgs pythonPackages.pillow roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
