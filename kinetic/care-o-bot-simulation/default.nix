
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-bringup-sim, catkin, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot-simulation";
  version = "0.6.7";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot_simulation/0.6.7-0.tar.gz";
    name = "0.6.7-0.tar.gz";
    sha256 = "2af490c82b16e4d7b26d83e3e8d3919b77173f746e2b62a71a8fb637150249c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-manipulation cob-navigation cob-bringup-sim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-simulation meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
