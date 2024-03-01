
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot-simulation";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/noetic/care_o_bot_simulation/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "3170c350ff0f188c5dded6aea4e64cd0e3e27d4cef7c2fc3de4119d79151d6b8";
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
