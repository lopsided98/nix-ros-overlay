
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-autoware-kalman-filter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_kalman_filter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "7a28e1ebbb5f221292b2995d4acf6c93e564d2f187f415b87ee553b99566abf0";
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
