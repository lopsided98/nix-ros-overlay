
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, rqt-plot, std-msgs, pythonPackages, catkin, roslib, rqt-gui-py, rosbag, rospy, rqt-bag }:
buildRosPackage {
  pname = "ros-melodic-rqt-bag-plugins";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/melodic/rqt_bag_plugins/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "03951bd0c5ee306b14adec3e97a71804e35aed94d2d7a135c0cea5fb58cf87c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui sensor-msgs geometry-msgs rqt-plot pythonPackages.pycairo std-msgs pythonPackages.pillow roslib rqt-gui-py rosbag rospy rqt-bag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
