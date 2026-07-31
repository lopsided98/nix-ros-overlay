
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-jazzy-autoware-kalman-filter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_kalman_filter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "2c5f72bceda2b05549cf578d4068181eb3ec19f04211da57bcc7b34fa5ee2b5f";
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
