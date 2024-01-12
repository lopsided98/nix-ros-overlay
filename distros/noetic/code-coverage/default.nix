
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-code-coverage";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/noetic/code_coverage/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "9b9a65c55bcf50a7a90c55a13d0376e59aa1d331a6a2ae75d1c452caa9cb03f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lcov python3Packages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
