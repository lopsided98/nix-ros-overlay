
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-reflector-referencing";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_reflector_referencing/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "6631e274bff81a1e2b68c33d055157ed3dfd0c80c7af0feb9fd9eebaeb6454b2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node broadcasting a tf frame based on reflector markers detected within sensor_msgs::LaserScan messages.
    It can be used to position/reference a robot wrt to the reflektor markers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
