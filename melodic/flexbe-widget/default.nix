
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-widget";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_widget/1.1.1-0.tar.gz;
    sha256 = "67bfa42519de347f4ec5606a6b57d2ff0e2eccf0485eda757d3a855783c11bd9";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    #license = lib.licenses.BSD;
  };
}
