
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-melodic-flexbe-mirror";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_mirror/1.1.2-0.tar.gz;
    sha256 = "e7fe4fb1348f410752aea65dc49ce210fed63260ec504b1a895d9cc131569002";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-widget rospy flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
