
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ipa-differential-docking";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/ipa_differential_docking/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "1702147d1a9b120c18f7c2ee3a821566be140039abbe5013ed217d8383e8e0b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of ipa_differential_docking package'';
    license = with lib.licenses; [ asl20 ];
  };
}
