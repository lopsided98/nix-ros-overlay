
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, pythonPackages, rosbag, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosmsg";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmsg/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "c88c5be34e6ab334c8c0190c7469f63a33927185cc83fcd63adc8177702d7f6e";
  };

  buildType = "catkin";
  checkInputs = [ std-msgs ];
  propagatedBuildInputs = [ catkin genmsg genpy pythonPackages.rospkg rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmsg contains two command-line tools: <tt>rosmsg</tt> and
    <tt>rossrv</tt>. <tt>rosmsg</tt> is a command-line tool for
    displaying information about <a href="http://wiki.ros.org/msg">ROS Message
    types</a>. <tt>rossrv</tt> is a command-line tool for displaying
    information about <a href="http://wiki.ros.org/srv">ROS
    Service types</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
