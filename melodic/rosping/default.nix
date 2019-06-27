
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, mk, catkin, rosbuild, rostest, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosping";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rosping/2.1.12-2.tar.gz;
    sha256 = "47ebb8800b5f9364664c8398d385b124d715f4458c1eb9bd27b837df9f4d6bd8";
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
