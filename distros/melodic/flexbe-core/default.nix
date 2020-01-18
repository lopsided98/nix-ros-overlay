
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, smach-ros, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "a4d6ccb29b7958df989238f4a2ef52eb4a4149d37f9e9f53b2c7d113b40818c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy smach-ros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
