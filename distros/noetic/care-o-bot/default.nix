
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, care-o-bot-robot, care-o-bot-simulation, catkin, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot";
  version = "0.7.8-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot/0.7.8-2.tar.gz";
    name = "0.7.8-2.tar.gz";
    sha256 = "f81efe73f08aacb7975cfc97f4e897ec69c91a0b1ea885b46235067ecce4c856";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ care-o-bot-robot care-o-bot-simulation cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
