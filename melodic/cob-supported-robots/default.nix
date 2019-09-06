
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-supported-robots";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/melodic/cob_supported_robots/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "4072b48fcfe49cefd9a35ff160fe63c930e3cbd16a59a256ac6701389b794120";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
