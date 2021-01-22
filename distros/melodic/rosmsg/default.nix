
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, pythonPackages, rosbag, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosmsg";
  version = "1.14.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosmsg/1.14.10-1.tar.gz";
    name = "1.14.10-1.tar.gz";
    sha256 = "829f8bed2a2c606adfc03b1d40dd6d21df654dbcd052e1d6fa26d7ce0185063b";
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
