
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-code-coverage";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/noetic/code_coverage/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "8cd4d5c421532b7b8bb57563cd3cbbf6fd5edce3830da323f18b72d0a9bd9a1f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov python3Packages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
