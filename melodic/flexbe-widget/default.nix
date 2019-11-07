
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-widget";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_widget/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "f819f570ebe1a4e899edd92f7e26e63068466e4db3e652be4c0fc763f8e6c4cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
