
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lcov, catkin }:
buildRosPackage {
  pname = "ros-melodic-code-coverage";
  version = "0.2.4-r1";

  src = fetchurl {
    url = https://github.com/mikeferguson/code_coverage-gbp/archive/release/melodic/code_coverage/0.2.4-1.tar.gz;
    sha256 = "d5efb8d2d711ff2afaa056c470c4314d3efa3194eaeca1d831a07fac785e4b76";
  };

  buildInputs = [ lcov ];
  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
