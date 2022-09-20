
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot-simulation";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot_simulation/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "91623e07b61804ab5a7ae319ad71c40cd78e7e536a9d461edb36d183908b995c";
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
