
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-mirror";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_mirror/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "cafc6ef8f4c9a11c38c02b4180fe563d22778c76ca8266b1acea58432cb97045";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-widget rospy flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
