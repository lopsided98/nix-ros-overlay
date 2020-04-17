
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-code-coverage";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/melodic/code_coverage/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0c4bba84a8d48c83e42344871f6889429f3e24317fa3dfc3368437d6d86a0255";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
