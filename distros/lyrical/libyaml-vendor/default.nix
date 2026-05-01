
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-libyaml-vendor";
  version = "1.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/lyrical/libyaml_vendor/1.8.1-3.tar.gz";
    name = "1.8.1-3.tar.gz";
    sha256 = "295b559c95708bede245319f963c2b9e1a39e7550bcbfde69bf1169fdd45ba24";
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
