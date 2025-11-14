
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-math";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_math/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "8f3007742807818ce90dea1b4913478c8ae1c73d3cc019bd27356799b77d21f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_math package";
    license = with lib.licenses; [ asl20 ];
  };
}
