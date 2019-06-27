
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-lunar-flexbe-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_core/1.2.1-1.tar.gz;
    sha256 = "7013c0597e32af8f0e1e2224bf154f7bfada1b2f02426188174ab21c8a4040d1";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros rospy diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
