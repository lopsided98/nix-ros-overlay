
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-code-coverage";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/kinetic/code_coverage/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "3da97df4d465ae25f17378ffdd930cc272acbec10fc56358ce68fe4311909227";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
