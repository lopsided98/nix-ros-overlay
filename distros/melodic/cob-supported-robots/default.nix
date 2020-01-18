
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-supported-robots";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/melodic/cob_supported_robots/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "32e121b69c9c52d7e09fc882bc115ee2c05e0350da0c8dd5df73450df241ea96";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
