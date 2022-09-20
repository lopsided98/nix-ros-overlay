
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-noetic-flexbe-input";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/flexbe_input/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "6c8d5821e450c6cfa8831c5a04ebcd015ba4be97f22016a0c7bc17cf8220b085";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib flexbe-msgs pythonPackages.six rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
