
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git, vcstool }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-vendor-package";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_vendor_package/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "c0df3eb516056e92fd5901086151cc20d18477e257623d86623e674e9e91c581";
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
