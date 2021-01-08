
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-rcpputils";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/dashing/rcpputils/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "53236dd27ecccfbcbe4d0cbf4b7b1183b7abc0c09119d8dde0462d821175ae5f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing utility code for C++. Currently only Clang thread safety annotation macros'';
    license = with lib.licenses; [ asl20 ];
  };
}
