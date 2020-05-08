
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-code-coverage";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/code_coverage-gbp/archive/release/melodic/code_coverage/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "8e1eb481b08b7d162e0cd7c9863661b260536f8806f92da44b56a19f2957782a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.coverage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake configuration to run coverage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
