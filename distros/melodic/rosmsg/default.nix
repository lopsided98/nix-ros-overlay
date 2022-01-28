
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, genmsg, genpy, pythonPackages, rosbag, roslib, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rosmsg";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosmsg/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "12ea63e00d4d35c223229eadddab04a147c44475aa4cf4288b72daf4a4637a5c";
  };

  buildType = "catkin";
  checkInputs = [ diagnostic-msgs rostest std-msgs std-srvs ];
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
