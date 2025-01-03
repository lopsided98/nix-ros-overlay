
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-humble-ecl-utilities";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_utilities/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "0770aea129d6e599a2334dbcf86f0f77a4799511d01e9976d09cfbc0396faaeb";
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
