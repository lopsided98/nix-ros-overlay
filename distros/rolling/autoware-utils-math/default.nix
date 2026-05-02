
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-math";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_math/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "b161b3b9a07624643472c9f6ff448ac9f02a4d1495831b54c7a89f0ec5bf06a9";
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
