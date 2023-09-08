
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, vcstool }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-vendor-package";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_vendor_package/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "c9f114060e0f30db57c06aa0aed163001e4bef976182a8221da3351618cb3f5b";
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
