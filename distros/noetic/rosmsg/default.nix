
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, python3Packages, rosbag, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosmsg";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmsg/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "d9dd9827e08ed2d50f514c110df6bd1569bf881ba0559dac7b486563bc90338b";
  };

  buildType = "catkin";
  checkInputs = [ std-msgs ];
  propagatedBuildInputs = [ catkin genmsg genpy python3Packages.rospkg rosbag roslib ];
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
