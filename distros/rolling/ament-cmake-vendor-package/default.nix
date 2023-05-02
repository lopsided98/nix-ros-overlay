
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-vendor-package";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_vendor_package/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "a584d575bf8cb9c85745728c3df99a3cf3398226bee983a3828bf4a5ce839808";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-test ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies git ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies git ];

  meta = {
    description = ''Macros for maintaining a 'vendor' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
