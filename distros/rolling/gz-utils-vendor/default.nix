
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cli11, cmake, gz-cmake-vendor, spdlog-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-utils-vendor";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_utils_vendor-release/archive/release/rolling/gz_utils_vendor/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "40b9cc6699e0bcc2b3893c9bf03c6d2709f8e43f89c2658a63002fb9230f11ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ cli11 gz-cmake-vendor spdlog-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-utils 4.0.0

    Gazebo Utils : Classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
