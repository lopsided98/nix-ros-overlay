
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-color-util";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/rolling/color_util/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "924cbab19a7401cc3a2b0f4cd21b19dd05a03197ed71551748c57d64c1f9d5a9";
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
