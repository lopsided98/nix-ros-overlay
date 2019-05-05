
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lcov, catkin }:
buildRosPackage {
  pname = "ros-lunar-code-coverage";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/mikeferguson/code_coverage-gbp/archive/release/lunar/code_coverage/0.2.3-0.tar.gz;
    sha256 = "ed71d78fc83e99ce49f67e5392d996715514d067abc64a21b3a8c035ef8c65cc";
  };

  buildInputs = [ lcov ];
  propagatedBuildInputs = [ lcov ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
