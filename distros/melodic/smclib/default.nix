
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-smclib";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/melodic/smclib/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "7048853d548eef1c934bf174c172b5afa93bdbe089a55667d045863feb40919f";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The State Machine Compiler (SMC) from http://smc.sourceforge.net/
    converts a language-independent description of a state machine
    into the source code to support that state machine.

    This package contains the libraries that a compiled state machine
    depends on, but it does not contain the compiler itself.'';
    license = with lib.licenses; [ mpl11 ];
  };
}
