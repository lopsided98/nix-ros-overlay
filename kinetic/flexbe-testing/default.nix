
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-core, std-msgs, catkin, rosunit, smach-ros, flexbe-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-testing";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_testing/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "4322944ad11a6b5337a2a3780566785d2d1e5cab6a1586ca8b4c3cbac313cd4b";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ std-msgs rosunit ];
  propagatedBuildInputs = [ flexbe-msgs rospy smach-ros flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
