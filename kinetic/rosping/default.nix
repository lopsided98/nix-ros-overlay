
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, mk, catkin, rosbuild, rostest, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosping";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/rosping/2.1.11-0.tar.gz;
    sha256 = "bd79a4b637103a9fb52fa54d6bddf8554d45085e2df0d98594b38a96753f1165";
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
