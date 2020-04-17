
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-code-coverage";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/kinetic/code_coverage/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "7536df4e4a072ea93e0a0dac89b5bc235f0ad28b8ffbb95143e03b207c1a5f1b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
