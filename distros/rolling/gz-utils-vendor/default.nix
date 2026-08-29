
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cli11, cmake, gz-cmake-vendor, spdlog-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-utils-vendor";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_utils_vendor-release/archive/release/rolling/gz_utils_vendor/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "6a337ddf39779f75d291783456e0c7d255915a0a12f02ddd88c5582d20b34275";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ cli11 gz-cmake-vendor spdlog-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-utils 5.0.0

    Gazebo Utils : Classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
