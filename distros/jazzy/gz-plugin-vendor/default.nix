
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-tools-vendor, gz-utils-vendor }:
buildRosPackage {
  pname = "ros-jazzy-gz-plugin-vendor";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_plugin_vendor-release/archive/release/jazzy/gz_plugin_vendor/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "d6ac8111db5bdfc33b85d6f86e414a3a8a047b7ceb4f209750c2c79fcfdcaf7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-tools-vendor gz-utils-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-plugin2 2.0.4

    Gazebo Plugin : Cross-platform C++ library for dynamically loading plugins.";
    license = with lib.licenses; [ asl20 ];
  };
}
