
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot-simulation";
  version = "0.7.8-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot_simulation/0.7.8-2.tar.gz";
    name = "0.7.8-2.tar.gz";
    sha256 = "1486f170610665fda82055c52ffa4e2fb2b9fb04691381c56c5291a976c7d8bb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup-sim cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot-simulation meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
