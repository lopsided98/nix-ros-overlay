
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-supported-robots";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/kinetic/cob_supported_robots/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "541243cd72e87a3e3a56ceaf84692c98814e6fdd38b8a25bfade184536fb8a71";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
