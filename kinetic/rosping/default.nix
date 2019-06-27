
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, mk, catkin, rosbuild, rostest, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosping";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/rosping/2.1.12-1.tar.gz;
    sha256 = "29f9edd709036323a074865dcdefda715692781978431fbcaaa07279dfd562c0";
  };

  buildInputs = [ rosboost-cfg mk rosbuild rostest std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href="http://wiki.ros.org/rosnode">rosnode</a>.'';
    license = with lib.licenses; [ boost ];
  };
}
