
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov }:
buildRosPackage {
  pname = "ros-kinetic-code-coverage";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/kinetic/code_coverage/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "cf1cb89add4855393e7162d57d595e6ca8d643a1288adb1b2049c68c7de6ae20";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
