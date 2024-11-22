
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libyaml-vendor";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/rolling/libyaml_vendor/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "bab1609badeedfeeecaf5a83e6786665943ed02fdf9e45abacc2ca17c2c95953";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ libyaml pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package pkg-config ];

  meta = {
    description = "Vendored version of libyaml.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
