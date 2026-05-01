
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-lyrical-ecl-utilities";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_utilities/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "1219a0d231dc16f30a76da1aa0b06a1a5b1eaa26fbf4f7195dcc8f6694a9ed80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-license ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Includes various supporting tools and utilities for c++ programming.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
