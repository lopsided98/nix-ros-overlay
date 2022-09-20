
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rostate-machine";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/rostate_machine-release/archive/release/melodic/rostate_machine/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "a7eae9ee6371319fc4b598f00322101431141a52b07ed6ef2c0ee5588a050253";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp roslib rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostate_machine package'';
    license = with lib.licenses; [ asl20 ];
  };
}
