
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslib, rospy, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rospy-message-converter";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/rospy_message_converter-release/archive/release/noetic/rospy_message_converter/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "a355bffe44bf9b82f9aad47ad704d0e11667df66daa9f81c8112458be18f5408";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rosunit std-srvs ];
  propagatedBuildInputs = [ message-runtime roslib rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between Python dictionaries and JSON to rospy messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
