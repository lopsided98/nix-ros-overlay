
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, pythonPackages, rosbag, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosmsg";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosmsg/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "f0907cd996fe008658d3af3d5aba6747dda30767d03fb632a2e7b82c873be5d9";
  };

  buildType = "catkin";
  checkInputs = [ std-msgs ];
  propagatedBuildInputs = [ catkin genmsg genpy pythonPackages.rospkg rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmsg contains two command-line tools: <tt>rosmsg</tt> and
    <tt>rossrv</tt>. <tt>rosmsg</tt> is a command-line tool for
    displaying information about <a href="http://www.ros.org/wiki/msg">ROS Message
    types</a>. <tt>rossrv</tt> is a command-line tool for displaying
    information about <a href="http://www.ros.org/wiki/srv">ROS
    Service types</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
