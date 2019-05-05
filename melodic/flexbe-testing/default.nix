
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rostest, rospy, std-msgs, rosunit, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-testing";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_testing/1.1.2-0.tar.gz;
    sha256 = "07f784fc73b34378dbd7f96b85a3027673d91fd2fd695ad94d624b7a97e90e8e";
  };

  buildInputs = [ rostest ];
  checkInputs = [ std-msgs rosunit ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
