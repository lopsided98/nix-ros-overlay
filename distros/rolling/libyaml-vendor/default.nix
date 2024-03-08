
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, libyaml, performance-test-fixture, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libyaml-vendor";
  version = "1.6.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/rolling/libyaml_vendor/1.6.2-2.tar.gz";
    name = "1.6.2-2.tar.gz";
    sha256 = "e88390c3a83bb3886d666882ac31adf5e3d41feb113dfd5eadf8764bedae4c9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ libyaml pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package pkg-config ];

  meta = {
    description = ''Vendored version of libyaml.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
