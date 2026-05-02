
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libyaml-vendor";
  version = "1.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/rolling/libyaml_vendor/1.8.1-2.tar.gz";
    name = "1.8.1-2.tar.gz";
    sha256 = "d889e104adb2274228f9872876d3f1fe9fcc4743a27f90ffc6b8434dfef6c9a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common libyaml performance-test-fixture ];
  propagatedBuildInputs = [ libyaml pkg-config ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Exports a custom CMake module to find libyaml.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
