
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, smach-ros, flexbe-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-input";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_input/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "49e9b58df818ce46656a7482b8c0b260f8cc45f0c04dc986dd06163ba36a3245";
  };

  buildType = "catkin";
  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ flexbe-msgs rospy actionlib smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
