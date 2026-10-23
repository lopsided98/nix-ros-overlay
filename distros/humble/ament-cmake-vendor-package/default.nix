
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git, vcstool }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-vendor-package";
  version = "1.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_vendor_package/1.3.15-1.tar.gz";
    name = "1.3.15-1.tar.gz";
    sha256 = "cf917e6f531b9f7d2f8759cdbc5dcbbacce5b92df93a31a4c30236e7a0b6e43a";
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
