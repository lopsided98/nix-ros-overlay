
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, vcstool }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-vendor-package";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_vendor_package/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "d6173555eeb64eb83d31cc44e92702e068b09c141c912cde44f100c9bfaa8269";
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
