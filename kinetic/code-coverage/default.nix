
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lcov, catkin }:
buildRosPackage {
  pname = "ros-kinetic-code-coverage";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/mikeferguson/code_coverage-gbp/archive/release/kinetic/code_coverage/0.2.3-0.tar.gz;
    sha256 = "ed909742db04271dea0964055694118deb6adab2869bdef02043187b9ef86cf4";
  };

  buildInputs = [ lcov ];
  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    #license = lib.licenses.BSD;
  };
}
