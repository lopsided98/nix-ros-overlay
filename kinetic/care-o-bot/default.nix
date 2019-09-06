
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-navigation, care-o-bot-robot, care-o-bot-simulation, catkin, cob-manipulation }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot";
  version = "0.6.7";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot/0.6.7-0.tar.gz";
    name = "0.6.7-0.tar.gz";
    sha256 = "60d89fb86017fdd1e458aa7347d59dac5b31423c3bf89af49d27a6b7a56afcd9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ care-o-bot-simulation cob-navigation cob-manipulation care-o-bot-robot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
