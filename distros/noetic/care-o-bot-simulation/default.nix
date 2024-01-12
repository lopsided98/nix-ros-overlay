
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot-simulation";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot_simulation/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "06e11bc56166899096de43204abc2963f7d87f70eac332eb904679324892f511";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup-sim cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-simulation meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
