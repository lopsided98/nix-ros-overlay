
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git, vcstool }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-vendor-package";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_vendor_package/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "ee5ac63506684f8252e3e1f5541dfb3a63f22a6050b19bc914264cb396eaee96";
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
