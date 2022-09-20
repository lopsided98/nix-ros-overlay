
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils }:
buildRosPackage {
  pname = "ros-galactic-libyaml-vendor";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/galactic/libyaml_vendor/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "5cfc44beb428f7a4c221ed3c2a0131f1557696618249869a904799474c012d2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcpputils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendored version of libyaml.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
