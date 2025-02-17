
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor }:
buildRosPackage {
  pname = "ros-jazzy-gz-utils-vendor";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_utils_vendor-release/archive/release/jazzy/gz_utils_vendor/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "20f9865be8ebf93c3941bfa2cfe86e2b7cbf0318bcb659471e6658c906d9f3a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-utils2 2.2.1

    Gazebo Utils : Classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
