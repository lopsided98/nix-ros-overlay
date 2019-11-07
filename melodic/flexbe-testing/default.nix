
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rostest, rospy, std-msgs, rosunit, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-testing";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_testing/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "e19a18bd897d936a6fe6c199124ea3faf232f435c5588a91301973575838825d";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ std-msgs rosunit ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
