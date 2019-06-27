
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-lunar-flexbe-mirror";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_mirror/1.2.1-1.tar.gz;
    sha256 = "cb37d78993ba2443a5ca8f15c0ede3489b94b14671ef4d48ecdcd02de597b037";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-widget rospy flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
