
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-vendor-package";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_vendor_package/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "70394e6c53e781c962410bda2c59b10a9617c2f267e25935058930d70b742331";
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
