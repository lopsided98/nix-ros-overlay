
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, pythonPackages, genpy, std-msgs, genmsg, roslib }:
buildRosPackage {
  pname = "ros-lunar-rosmsg";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosmsg/1.13.7-0.tar.gz;
    sha256 = "d69e1f9a023b8e3462cea7b221bffc025b841d5e5050e95ba2b23684ec29e82c";
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
