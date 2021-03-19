
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, genmsg, genpy, python3Packages, rosbag, roslib, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rosmsg";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosmsg/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "6f00ef6a51c837b03df6597c2ea8e219cc6fbbe25b40b25370c6109784e6be69";
  };

  buildType = "catkin";
  checkInputs = [ diagnostic-msgs rostest std-msgs std-srvs ];
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
