
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, rostest, smach-ros, tf }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-core";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_core/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "3b1d29d34f7208f8772dfcf910f39bc0b0c53ba95a7c97bf49b224d972803f87";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy smach-ros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
