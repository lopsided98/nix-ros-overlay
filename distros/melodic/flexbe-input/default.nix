
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, pythonPackages, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-input";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_input/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "39042d3ccf5c5a7bc479a6798d6bc3f7b16af6a2af8d980c6fddc734d576f4a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs pythonPackages.six rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
