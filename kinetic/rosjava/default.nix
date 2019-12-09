
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosjava-core, rosjava-bootstrap, catkin, rosjava-messages, zeroconf-jmdns-suite, rosjava-build-tools, rosjava-extras, genjava, rosjava-test-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava-release/archive/release/kinetic/rosjava/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "3a67357648da216378519de67fe4a157c69086f4e2209c5c7813a629da9bfbd4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosjava-core rosjava-bootstrap rosjava-messages zeroconf-jmdns-suite rosjava-build-tools rosjava-extras genjava rosjava-test-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is a meta package for the official rosjava repositories.'';
    license = with lib.licenses; [ asl20 ];
  };
}
