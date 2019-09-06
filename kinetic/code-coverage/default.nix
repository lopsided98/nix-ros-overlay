
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lcov, catkin }:
buildRosPackage {
  pname = "ros-kinetic-code-coverage";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/kinetic/code_coverage/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "e8a70c2bd68f78d411596d3cd6223b17bdc4b7c41207dfab218f902a802e4578";
  };

  buildType = "catkin";
  buildInputs = [ lcov ];
  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
