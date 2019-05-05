
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-lunar-flexbe-widget";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/flexbe_widget/1.1.2-0.tar.gz;
    sha256 = "e64db5e2dcef0cc2a44c7afea7b96edaf3466032c1fbab9c47714dcefe7a604b";
  };

  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
