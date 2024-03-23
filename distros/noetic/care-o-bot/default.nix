
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, care-o-bot-robot, care-o-bot-simulation, catkin, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "16fdee4ffb54d5d53be7ce975ef5961403dd1be803709ffaf31f352cbe2fecac";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ care-o-bot-robot care-o-bot-simulation cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The care-o-bot meta-package";
    license = with lib.licenses; [ asl20 ];
  };
}
