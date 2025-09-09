
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk, rosboost-cfg, rosbuild, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosping";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rosping/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "e321e7e0ae7e3ba871729f5057402d780eb43f4da90e0551dfc695d62273eaac";
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
