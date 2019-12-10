
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-eloquent-rcpputils";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/eloquent/rcpputils/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "06e6a39aff40a4d256674964fba35aa9ce2ec0d9ff64491a59b8576d2399d37c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Package containing utility code for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
