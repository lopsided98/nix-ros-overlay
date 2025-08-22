
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-autoware-kalman-filter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_kalman_filter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "6fbf2c5d288e548dfec3445ff0bb12a3ac12ec478d1b0b1b858cbc34f31b5a2c";
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
