
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ipa-differential-docking";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/ipa_differential_docking/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "09b554178afbb3ad4f95ac879fb9f1186e7cdb5a48e3400b9483969416f74468";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of ipa_differential_docking package'';
    license = with lib.licenses; [ asl20 ];
  };
}
