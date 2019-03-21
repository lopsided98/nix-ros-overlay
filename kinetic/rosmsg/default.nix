
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, pythonPackages, genpy, std-msgs, genmsg, roslib }:
buildRosPackage {
  pname = "ros-kinetic-rosmsg";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosmsg/1.12.14-0.tar.gz;
    sha256 = "42a7544df8a19e2d5e36769ff25d9c03ea9fe8db698363f0b39cb06e039f5f86";
  };

  checkInputs = [ std-msgs ];
  propagatedBuildInputs = [ genpy catkin pythonPackages.rospkg genmsg rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmsg contains two command-line tools: <tt>rosmsg</tt> and
    <tt>rossrv</tt>. <tt>rosmsg</tt> is a command-line tool for
    displaying information about <a href="http://www.ros.org/wiki/msg">ROS Message
    types</a>. <tt>rossrv</tt> is a command-line tool for displaying
    information about <a href="http://www.ros.org/wiki/srv">ROS
    Service types</a>.'';
    #license = lib.licenses.BSD;
  };
}
