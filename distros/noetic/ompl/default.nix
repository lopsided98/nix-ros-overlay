
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-ompl";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/noetic/ompl/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "c2c4fca9ef20e20dc1de4c243a5ff100ab9ceb49b2f42eb6bc38a2aa29422d97";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
