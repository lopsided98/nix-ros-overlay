
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, catkin, message-generation, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-footprint-observer";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_footprint_observer/0.7.8-1.tar.gz;
    sha256 = "f32782b9f3693e8656569ab5a91d211b2b93e88b6ee8c2d7b40f5dbb1c6ad05d";
  };

  buildInputs = [ boost roscpp message-generation std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ boost roscpp message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_footprint_observer package adjusts the footprint of the robot based on the setup (e.g. arm and/or tray).'';
    license = with lib.licenses; [ asl20 ];
  };
}
