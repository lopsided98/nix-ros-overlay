
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-gz-cmake-vendor";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_cmake_vendor-release/archive/release/rolling/gz_cmake_vendor/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "c1a4690f6bc7ea94c2c466c4e33e12cea77e3e1e7cb88a497b0c089baf0b0414";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-cmake3 3.5.1

    Gazebo CMake : CMake Modules for Gazebo Projects";
    license = with lib.licenses; [ asl20 ];
  };
}
