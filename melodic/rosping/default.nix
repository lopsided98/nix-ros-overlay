
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, mk, catkin, rosbuild, rostest, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosping";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rosping/2.1.11-0.tar.gz;
    sha256 = "3a791764a80f3b660e57428d8274ecf2b13fefbb7959080aa035f7f8d16a0b35";
  };

  buildInputs = [ rostest rosboost-cfg std-msgs mk rosbuild roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href="http://wiki.ros.org/rosnode">rosnode</a>.'';
    #license = lib.licenses.Boost Software License, Version 1.0;
  };
}
