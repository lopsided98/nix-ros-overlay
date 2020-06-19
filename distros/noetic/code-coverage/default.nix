
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-code-coverage";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/noetic/code_coverage/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "d7ad54e10cdfe81fdc7a25041a2b2a68973dbe5a2bee5511ce87cb5d2290c766";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
