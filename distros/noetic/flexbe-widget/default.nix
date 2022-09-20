
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, rospy }:
buildRosPackage {
  pname = "ros-noetic-flexbe-widget";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/flexbe_widget/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "cbd5470bd91174fb17744449cbedbc4e2b8d355647a56b5706712ffafba0e9b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_widget implements some smaller scripts for the behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
