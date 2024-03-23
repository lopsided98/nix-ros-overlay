
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot-robot";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot_robot/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "755c8da4b557dfaaa5562cf26728a289ca4a092ddc0dc12fff428f27e1f2be4b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The care-o-bot-robot meta-package";
    license = with lib.licenses; [ asl20 ];
  };
}
