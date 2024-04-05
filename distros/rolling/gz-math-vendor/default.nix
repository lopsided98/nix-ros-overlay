
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, eigen, gz-cmake-vendor, gz-utils-vendor, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-gz-math-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_math_vendor-release/archive/release/rolling/gz_math_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "ee7eef25401d8735b8b85fd7827933f606a9464a0bf9d1906e141fd2c009189d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package pythonPackages.pybind11 ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ eigen gz-cmake-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-math7 7.4.0

    Gazebo Math : Math classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
