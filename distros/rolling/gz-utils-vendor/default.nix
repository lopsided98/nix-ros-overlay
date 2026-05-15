
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cli11, cmake, gz-cmake-vendor, spdlog-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-utils-vendor";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_utils_vendor-release/archive/release/rolling/gz_utils_vendor/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4eec2e945bd55505e288a0026d57f582a7e58f614dda4d2c382c5e40d0179874";
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
