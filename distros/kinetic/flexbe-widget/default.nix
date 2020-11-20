
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, rospy }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-widget";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_widget/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "5460e0aaaa168911d5de9b5daed59d3a914f14c597f616dfc9ce20a7e76aabc6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
