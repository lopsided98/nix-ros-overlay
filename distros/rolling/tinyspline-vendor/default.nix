
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-tinyspline-vendor";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/rolling/tinyspline_vendor/0.6.0-3.tar.gz";
    name = "0.6.0-3.tar.gz";
    sha256 = "77181daa82be5913928d638e27cdf2d27ebea4f49c41d014a7d4215e3cbf6044";
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
