
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-libyaml-vendor";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/rolling/libyaml_vendor/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "8e0cd178c9da4cc1d0f3df2f30ed2f8351added40e617339097068197ba0951d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcpputils rcutils ];
  propagatedBuildInputs = [ libyaml pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package pkg-config ];

  meta = {
    description = ''Vendored version of libyaml.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
