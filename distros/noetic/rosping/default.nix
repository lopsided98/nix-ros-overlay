
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosboost-cfg, rosbuild, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosping";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rosping/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "bc83a742a2c7d33da8f31b02ac1951e52a9a3c5ed225b394de4b2287c568b71d";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rosboost-cfg rosbuild rostest ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href=\"http://wiki.ros.org/rosnode\">rosnode</a>.";
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
