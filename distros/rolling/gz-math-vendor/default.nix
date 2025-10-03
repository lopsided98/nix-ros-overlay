
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, eigen, gz-cmake-vendor, gz-utils-vendor, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-gz-math-vendor";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_math_vendor-release/archive/release/rolling/gz_math_vendor/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "7e531185225ffc28be4680458c79561e53f5ebedb3dc6e13b327bf34ec249410";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ eigen gz-cmake-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-math 9.0.0

    Gazebo Math : Math classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
