
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, diagnostic-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.2.1-1.tar.gz;
    sha256 = "bd8f7ddc3d12f8c61c03bfb8ead179bb437fefbb32e759ce1f1d8d057b18a1ba";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros rospy diagnostic-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
