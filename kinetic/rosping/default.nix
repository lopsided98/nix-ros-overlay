
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, std-msgs, catkin, roscpp, rosbuild, rostest, mk }:
buildRosPackage {
  pname = "ros-kinetic-rosping";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/rosping/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "cc26b6cb500d078bb7068e815b57cde51a3669c25575dc438082e1ec3703c679";
  };

  buildType = "catkin";
  buildInputs = [ rosboost-cfg std-msgs roscpp rosbuild rostest mk ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href="http://wiki.ros.org/rosnode">rosnode</a>.'';
    license = with lib.licenses; [ boost ];
  };
}
