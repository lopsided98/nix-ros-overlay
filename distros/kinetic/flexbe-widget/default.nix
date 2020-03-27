
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, rospy, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-widget";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_widget/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "1a90350f992f3baaeddbf1708422e89adb83bd597ba0f9d052219b0bce6dfaca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
