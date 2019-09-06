
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, actionlib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "065afc380474adabbd7dcc187b12cab4ab35081076303921d85c1b276722dc5d";
  };

  buildType = "catkin";
  buildInputs = [ actionlib ];
  propagatedBuildInputs = [ rospy flexbe-msgs smach-ros actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
