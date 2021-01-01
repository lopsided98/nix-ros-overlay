
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, python3Packages, rosbag, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosmsg";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmsg/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "6aeec1dc094d3ecb4c286b6d583f4f014d5892de7061fa972b6a911e5ffe5b7a";
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
