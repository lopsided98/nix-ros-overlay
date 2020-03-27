
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, rostest, rosunit, smach-ros, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-flexbe-testing";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_testing/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "0ba600e5b68a9863afeb30bbbeb04eb50d1d0f9da5e656376c13ffa375ecb626";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosunit std-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
