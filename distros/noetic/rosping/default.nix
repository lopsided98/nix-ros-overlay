
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosboost-cfg, rosbuild, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosping";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rosping/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "1374d77f09134acb35f882e8fafc50d3db3bc557aa70d1c7cd8e2f920d469a51";
  };

  buildType = "catkin";
  buildInputs = [ mk rosboost-cfg rosbuild rostest ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href="http://wiki.ros.org/rosnode">rosnode</a>.'';
    license = with lib.licenses; [ boost ];
  };
}
