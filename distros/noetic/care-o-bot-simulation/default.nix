
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot-simulation";
  version = "0.7.8-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot_simulation/0.7.8-2.tar.gz";
    name = "0.7.8-2.tar.gz";
    sha256 = "2d74cce3cc4ccc93ae049f863b79c24743e44d57b8ee0e70a21db8fe9dcddb54";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup-sim cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-simulation meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
