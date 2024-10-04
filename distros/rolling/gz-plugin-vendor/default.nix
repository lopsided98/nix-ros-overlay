
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, gz-cmake-vendor, gz-tools-vendor, gz-utils-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-plugin-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_plugin_vendor-release/archive/release/rolling/gz_plugin_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d1200cc4611348fdeab78a72505ad04da946430b80a01838b895c548fb689a91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-tools-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-plugin3 3.0.0

    Gazebo Plugin : Cross-platform C++ library for dynamically loading plugins.";
    license = with lib.licenses; [ asl20 ];
  };
}
