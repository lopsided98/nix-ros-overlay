
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libyaml-vendor";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/rolling/libyaml_vendor/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "edf637ec3beef4d25c3303fb14de935c8060ab5c9830a43572e48c04095d2741";
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
