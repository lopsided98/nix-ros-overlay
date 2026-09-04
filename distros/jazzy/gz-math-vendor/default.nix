
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, eigen, gz-cmake-vendor, gz-utils-vendor, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-gz-math-vendor";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_math_vendor-release/archive/release/jazzy/gz_math_vendor/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "7302afbf89b2083f15316d23df5e801e5bb52e6e6c6169d390f184a232747b64";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ eigen gz-cmake-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-math7 7.7.0

    Gazebo Math : Math classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
