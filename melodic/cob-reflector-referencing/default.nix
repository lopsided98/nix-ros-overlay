
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-reflector-referencing";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_reflector_referencing/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "f6fd5812a4814bf65b6281e10f2c1af67c42c1404dede7bdec68a9f7a62924ba";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node broadcasting a tf frame based on reflector markers detected within sensor_msgs::LaserScan messages.
    It can be used to position/reference a robot wrt to the reflektor markers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
