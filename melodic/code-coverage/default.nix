
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lcov, catkin }:
buildRosPackage {
  pname = "ros-melodic-code-coverage";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/mikeferguson/code_coverage-gbp/archive/release/melodic/code_coverage/0.2.3-0.tar.gz;
    sha256 = "aaf9d0b3b00d1b1af932e9099dbb3a92475ee92e45f189b3bfb3559e8abb1c50";
  };

  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ lcov catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    #license = lib.licenses.BSD;
  };
}
