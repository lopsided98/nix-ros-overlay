
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-test, git }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-vendor-package";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_vendor_package/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "3b62a23c6329b62aff86492d8f0e25439a513aaa20932f3e4220b4077e69e0e2";
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
