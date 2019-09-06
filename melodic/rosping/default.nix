
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, mk, catkin, rosbuild, rostest, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosping";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/rosping/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "b472c70876d5ec0b35b98ad397bb82db99de60570b8d319a1b06d8ce1212c462";
  };

  buildType = "catkin";
  buildInputs = [ rosboost-cfg mk rosbuild rostest std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosping is the tool to send ICMP ECHO_REQUEST to network hosts where roscore is running, and send back to you as rostopic message. <br/>
    For echoing ROS node, use <a href="http://wiki.ros.org/rosnode">rosnode</a>.'';
    license = with lib.licenses; [ boost ];
  };
}
