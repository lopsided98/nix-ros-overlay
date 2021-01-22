
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rostate-machine";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/rostate_machine-release/archive/release/kinetic/rostate_machine/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "57ee3cbded20e661e73ca5e16a46af9282f11978146e6903b8f05043361d27c2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp roslib rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostate_machine package'';
    license = with lib.licenses; [ asl20 ];
  };
}
