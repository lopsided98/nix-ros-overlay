
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-autoware-kalman-filter";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_kalman_filter/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "29f3438bedac2e64f736cd19798452ccae88eaec6571f211b0b86e7d83d50e3e";
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
