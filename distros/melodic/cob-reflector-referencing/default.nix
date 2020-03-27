
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-reflector-referencing";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_reflector_referencing/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "140585c4be261ea1aff6d9cf607ce3d6e31f2d168c21cda87daedbdea1b543c2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node broadcasting a tf frame based on reflector markers detected within sensor_msgs::LaserScan messages.
    It can be used to position/reference a robot wrt to the reflektor markers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
