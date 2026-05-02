
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-kortex-api";
  version = "0.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_api/0.2.5-2.tar.gz";
    name = "0.2.5-2.tar.gz";
    sha256 = "86de236a6278a2dd00c2658080dd0226e5194c68fe581be8f5f022e9afb26472";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "KINOVA KORTEX™ API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
