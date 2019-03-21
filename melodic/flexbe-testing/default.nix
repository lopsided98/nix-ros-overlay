
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rostest, rospy, std-msgs, rosunit, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-testing";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_testing/1.1.1-0.tar.gz;
    sha256 = "4cf76c948796fc9fc57b86ec6ab1d0467c6b93a5703d2af4b215210cbbb3fe3d";
  };

  checkInputs = [ std-msgs rosunit ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ rostest catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    #license = lib.licenses.BSD;
  };
}
