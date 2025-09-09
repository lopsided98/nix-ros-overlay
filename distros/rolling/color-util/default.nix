
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-color-util";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/rolling/color_util/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2accf19cf6b2931eb8326518a37ba6423a6c5155407af600375d64dd9ba92964";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An almost dependency-less library for converting between color spaces";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
