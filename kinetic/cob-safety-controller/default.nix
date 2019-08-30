
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-safety-controller";
  version = "0.6.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_safety_controller/0.6.8-1.tar.gz;
    sha256 = "45b1e382f053c35b192e5cad91bc3f5d2e4fb2a56de8a512ecc04d6c41c50c90";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
