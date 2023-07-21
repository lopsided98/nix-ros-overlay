
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosboost-cfg, rosbuild, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosping";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rosping/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "bd0dc5b13cc1b2d3aea68ee7e5dc1ff58432f35dc182b55e9aaae73fd1cb9bfa";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosboost-cfg rosbuild rostest ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href="http://wiki.ros.org/rosnode">rosnode</a>.'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
