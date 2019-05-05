
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, flexbe-widget, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-lunar-flexbe-mirror";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_mirror/1.1.2-0.tar.gz;
    sha256 = "d563925854e946b107fc0018a4b3cdd3b90abf72e8a28bf077c855572a3c146f";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-widget rospy flexbe-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_mirror implements functionality to remotely mirror an executed behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
