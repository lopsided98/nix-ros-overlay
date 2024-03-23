
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, vcstool }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-vendor-package";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_vendor_package/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "018bfac29dc36ff874a6c64f47edd524217db83f3fcfb1bbf8b108ba38de25b2";
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
