
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rospy, flexbe-core }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-widget";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_widget/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "07478d66a83de47880cb6c1964047cd96d6a55f04b3d8521797dc096bcee57ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
