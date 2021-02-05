
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils }:
buildRosPackage {
  pname = "ros-foxy-libyaml-vendor";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/foxy/libyaml_vendor/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "f16180e3aded15087e9e41e9f7acb34062ab01439f0e3f7b298a4cd5e4559040";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcpputils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libyaml, provides the last version (1.8.0 rc) that ships with a CMake module'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
