
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, vcstool }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-vendor-package";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_vendor_package/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "9d0f1f9949099b1446a65995759d4b4a8031313380f456f49473c6b6852eb308";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-test ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies vcstool ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies vcstool ];

  meta = {
    description = "Macros for maintaining a 'vendor' package.";
    license = with lib.licenses; [ asl20 ];
  };
}
