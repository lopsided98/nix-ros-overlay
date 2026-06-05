
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-libyaml-vendor";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/jazzy/libyaml_vendor/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "2f99d6b24d015e2501bd15a952a6e32f6b4bdae72b3befbd861f671733eb4e65";
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
