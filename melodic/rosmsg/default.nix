
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, genmsg, pythonPackages, roslib, catkin, genpy, rosbag }:
buildRosPackage {
  pname = "ros-melodic-rosmsg";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosmsg/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "d6b76ae3f2df2b92e423f03b57ddd325f928e6d16b1fbcac2939fd173ce3195d";
  };

  buildType = "catkin";
  checkInputs = [ std-msgs ];
  propagatedBuildInputs = [ genmsg pythonPackages.rospkg roslib catkin genpy rosbag ];
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
