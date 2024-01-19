
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, git, performance-test-fixture, rcpputils }:
buildRosPackage {
  pname = "ros-humble-libyaml-vendor";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/humble/libyaml_vendor/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "88e26943a185155364dba8847dfa9130fe52e5ba9f55b942ff8473773e9523fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common performance-test-fixture rcpputils ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Vendored version of libyaml.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
