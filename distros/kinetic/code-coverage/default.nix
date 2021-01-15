
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-code-coverage";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/kinetic/code_coverage/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "a7f8c2bf21d43bede3a7c9768f4fd37766024e448a108fc327dce2325c7e0215";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
