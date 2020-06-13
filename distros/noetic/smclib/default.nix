
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-smclib";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/noetic/smclib/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "73a9ee81c67d40f919dfede6603eb672b35f304446ef60447cdeadc5340096a3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The State Machine Compiler (SMC) from http://smc.sourceforge.net/
    converts a language-independent description of a state machine
    into the source code to support that state machine.

    This package contains the libraries that a compiled state machine
    depends on, but it does not contain the compiler itself.'';
    license = with lib.licenses; [ mpl11 ];
  };
}
