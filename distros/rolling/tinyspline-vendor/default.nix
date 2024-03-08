
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-tinyspline-vendor";
  version = "0.6.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/rolling/tinyspline_vendor/0.6.0-4.tar.gz";
    name = "0.6.0-4.tar.gz";
    sha256 = "65c7033e502a2cf51b70154503a71f9e2ffa98dea3a2feeaf28f75a8604ee78a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''The vendor package for tinyspline.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
