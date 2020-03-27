
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, flexbe-msgs, pythonPackages, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-input";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_input/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "406691bcca409ea9240110d29f6dc0c883510448dbb25a42b4a469d2d23a18bb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib flexbe-msgs pythonPackages.six rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_input enables to send data to onboard behavior when required.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
