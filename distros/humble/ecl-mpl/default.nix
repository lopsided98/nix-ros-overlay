
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-mpl";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_mpl/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "4ebf12aed5503786122e6cf8b11b3f5567351926f5a1776d05db00e88b6bd880";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Metaprogramming tools move alot of runtime calculations to be shifted to
    compile time. This has only very elementary structures at this stage.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
