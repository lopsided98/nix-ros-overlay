
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, safe-teleop-base, stage }:
buildRosPackage {
  pname = "ros-kinetic-safe-teleop-stage";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/kinetic/safe_teleop_stage/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "2d822c77e30d754df6817fb0aa8160a0c34a4825af0a6c87f496e6304d70d7d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy safe-teleop-base stage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demo of safe_teleop in stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
