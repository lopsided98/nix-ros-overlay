
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-license, ecl-mpl }:
buildRosPackage {
  pname = "ros-jazzy-ecl-utilities";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_utilities/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "f5f5a734ef4b184053160082de3201cb67121e2558e134af30fc3b631df0d3e6";
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
