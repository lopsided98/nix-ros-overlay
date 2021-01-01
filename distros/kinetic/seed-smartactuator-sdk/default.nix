
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-seed-smartactuator-sdk";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_smartactuator_sdk-release/archive/release/kinetic/seed_smartactuator_sdk/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "147e8a0b76d3431fb6e657f5afdd8bb272aa45b541595829fa90ab8933201258";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_smartactuator_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
