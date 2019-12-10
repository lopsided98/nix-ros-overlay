
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov }:
buildRosPackage {
  pname = "ros-melodic-code-coverage";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/melodic/code_coverage/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9eb40586b01a08c0cf52aabea8106be5b4e03d2fb4e3f32586d19b2e4040b4e0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
