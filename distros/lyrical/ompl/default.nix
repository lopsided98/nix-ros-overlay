
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, pkg-config, python3, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-ompl";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ompl-release/archive/release/lyrical/ompl/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "03f2d59ff35bf0ce9e0f2abe6c4f5112bbbd622dfe1f353f976ad6675659bd3a";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen pkg-config python3 ];
  propagatedBuildInputs = [ boost flann yaml-cpp ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = "OMPL is a free sampling-based motion planning library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
