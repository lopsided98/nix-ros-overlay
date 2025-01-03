
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ipa-differential-docking";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/ipa_differential_docking/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "23f65a937b6c5852bdf71e348caff16f71ca287a82523e0366da9809bb63c4a0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package is a substitute for the private implementation of ipa_differential_docking package";
    license = with lib.licenses; [ asl20 ];
  };
}
