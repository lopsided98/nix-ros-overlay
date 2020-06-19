
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, rostest, rosunit, smach-ros, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-flexbe-testing";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_testing/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "3203ddf405af11b8012ea96da0dc075674503f159bcd6ab4e1e59f793f59aea7";
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
