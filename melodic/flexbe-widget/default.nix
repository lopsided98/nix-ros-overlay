
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-widget";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_widget/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "fdb723dadbd6c996f88efc878b30673af12e9ec480a1204beeef30b7b6dcfefb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
