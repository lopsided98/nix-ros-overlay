
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "cddf2023ea8181e51a61692ba2ed36c1ad295a26ce047a223d92d1f17bd9e2b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs smach-ros rospy diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
