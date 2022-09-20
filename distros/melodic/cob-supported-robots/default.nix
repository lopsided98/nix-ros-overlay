
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-supported-robots";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/melodic/cob_supported_robots/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "ed78423a62385277880ea1d93f3adde5e1652422ebfefbd6352af188e12b2322";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
