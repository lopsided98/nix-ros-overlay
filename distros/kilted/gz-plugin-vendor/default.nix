
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-tools-vendor, gz-utils-vendor }:
buildRosPackage {
  pname = "ros-kilted-gz-plugin-vendor";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_plugin_vendor-release/archive/release/kilted/gz_plugin_vendor/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "b2c3830e1296afedb61710b2b2c92e1fafcce06dd535f13450918833bb0b430e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-tools-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-plugin3 3.1.0

    Gazebo Plugin : Cross-platform C++ library for dynamically loading plugins.";
    license = with lib.licenses; [ asl20 ];
  };
}
