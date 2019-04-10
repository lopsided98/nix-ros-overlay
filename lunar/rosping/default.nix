
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, mk, catkin, rosbuild, rostest, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosping";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/rosping/2.1.11-2.tar.gz;
    sha256 = "01ceb231831f443f10ec77b2f890e19ca76b7bb684c4ae5a758392d96fa6e3e8";
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
