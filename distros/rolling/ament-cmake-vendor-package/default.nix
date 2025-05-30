
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git, vcstool }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-vendor-package";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_vendor_package/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "33efa009a2f1b6320ec90c9b1600fe4fb7ff44869a3e7fc818398e0129ecb7a3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-test ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies git vcstool ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies git vcstool ];

  meta = {
    description = "Macros for maintaining a 'vendor' package.";
    license = with lib.licenses; [ asl20 ];
  };
}
