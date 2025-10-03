
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cli11, cmake, gz-cmake-vendor, spdlog-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-utils-vendor";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_utils_vendor-release/archive/release/rolling/gz_utils_vendor/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "3c3132a79e71acc35a6f4b1fb4782f186b8b1b9741b8e6ee9930e8d8a26d2be1";
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
