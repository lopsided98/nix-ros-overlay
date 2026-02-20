
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-autoware-kalman-filter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_kalman_filter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d1f2909b3ddefe58b69f26e5cb30a01c76e6493e3056d90e8d2edd65b0897994";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-ros ament-lint-auto autoware-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The kalman filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
