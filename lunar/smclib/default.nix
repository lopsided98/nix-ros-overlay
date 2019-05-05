
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-smclib";
  version = "1.8.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/bond_core-release/archive/release/lunar/smclib/1.8.3-0.tar.gz;
    sha256 = "c6f441e93ed69415f2e8cf980d736f9d47434a42b2eaff990af7c8728ffe5b66";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The State Machine Compiler (SMC) from http://smc.sourceforge.net/
    converts a language-independent description of a state machine
    into the source code to support that state machine.

    This package contains the libraries that a compiled state machine
    depends on, but it does not contain the compiler itself.'';
    license = with lib.licenses; [ mpl11 ];
  };
}
