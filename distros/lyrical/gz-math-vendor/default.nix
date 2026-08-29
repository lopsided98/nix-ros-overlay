
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, eigen, gz-cmake-vendor, gz-utils-vendor, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-gz-math-vendor";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_math_vendor-release/archive/release/lyrical/gz_math_vendor/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "1246e81de95fc0655aeeae52332b4d7e1417538d6103340743ae2e209f8b5b45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ eigen gz-cmake-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-math 9.3.0

    Gazebo Math : Math classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
