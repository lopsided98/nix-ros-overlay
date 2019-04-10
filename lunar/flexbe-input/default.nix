
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-lunar-flexbe-input";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_input/1.1.2-0.tar.gz;
    sha256 = "36301fc25263c6ff8efe5839c316dd86925476a57ecb9d8f1da073c720ab283d";
  };

  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros actionlib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    #license = lib.licenses.BSD;
  };
}
