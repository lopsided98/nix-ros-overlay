
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genjava, rosjava-bootstrap, rosjava-build-tools, rosjava-core, rosjava-extras, rosjava-messages, rosjava-test-msgs, zeroconf-jmdns-suite }:
buildRosPackage {
  pname = "ros-kinetic-rosjava";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava-release/archive/release/kinetic/rosjava/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "3a67357648da216378519de67fe4a157c69086f4e2209c5c7813a629da9bfbd4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genjava rosjava-bootstrap rosjava-build-tools rosjava-core rosjava-extras rosjava-messages rosjava-test-msgs zeroconf-jmdns-suite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a meta package for the official rosjava repositories.'';
    license = with lib.licenses; [ asl20 ];
  };
}
