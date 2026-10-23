
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git, vcstool }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-vendor-package";
  version = "2.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/kilted/ament_cmake_vendor_package/2.7.6-1.tar.gz";
    name = "2.7.6-1.tar.gz";
    sha256 = "58c665a2d517eb60fc39d316024f52b9528455b7a4b7aa7a5780e69e9ca9a610";
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
