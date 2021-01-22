
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, care-o-bot-robot, care-o-bot-simulation, catkin, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-kinetic-care-o-bot";
  version = "0.7.8-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/care-o-bot-release/archive/release/kinetic/care_o_bot/0.7.8-2.tar.gz";
    name = "0.7.8-2.tar.gz";
    sha256 = "4d812066ae9db41631cf31651ad31b31411fa90e83810550215fc44cd1f1eca2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ care-o-bot-robot care-o-bot-simulation cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
