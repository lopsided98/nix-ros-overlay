
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-tinyspline-vendor";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/rolling/tinyspline_vendor/0.6.0-5.tar.gz";
    name = "0.6.0-5.tar.gz";
    sha256 = "897f2167e232401b3450b3a3a9334afe189b559f6ca727af5265ce678aca8f61";
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
