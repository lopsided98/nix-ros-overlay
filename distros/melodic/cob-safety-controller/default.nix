
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-safety-controller";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_safety_controller/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "411e9149ab894d95a59f321b5dfbc7f9810bb9b863459b98eae62b0ab5cea84f";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
