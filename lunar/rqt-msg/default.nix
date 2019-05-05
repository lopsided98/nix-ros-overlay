
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, pythonPackages, rosmsg, rqt-console, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-msg";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_msg-release/archive/release/lunar/rqt_msg/0.4.8-0.tar.gz;
    sha256 = "22672ad0b94edc8b799d842b28b07000fb9cdd4e6d77939c851afd6f8e50c4c5";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosmsg rqt-console rospy rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
