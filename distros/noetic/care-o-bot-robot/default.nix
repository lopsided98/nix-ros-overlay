
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot-robot";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot_robot/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "ea4c33f96d677d3b57906b0c6d26d78a53b4ff017380db85a2d71ad48cfc4afc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-robot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
