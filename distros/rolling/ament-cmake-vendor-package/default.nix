
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, vcstool }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-vendor-package";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_vendor_package/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "808a80dc54178802d8641bff6ac20c16ab739d29d11f9e9b8dbba482aeb5750d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-test ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies vcstool ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies vcstool ];

  meta = {
    description = ''Macros for maintaining a 'vendor' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
