
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-color-util";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_util-release/archive/release/jazzy/color_util/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "02d3bcb94a92075e85613542ef8de4c1a0e1169e5b96910ec7ee53416a1e342b";
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
