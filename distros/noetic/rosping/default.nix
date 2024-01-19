
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosboost-cfg, rosbuild, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosping";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rosping/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "7d493fed4ad1860523560a628846f66e7b6ac5f4b74790eae2ea62ee007bd05a";
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
