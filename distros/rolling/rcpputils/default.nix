
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros-core, ament-cmake-uncrustify, ament-cmake-xmllint, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcpputils";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/rolling/rcpputils/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "3623821938b870e1a5cf54355d10e557d3f3c3ec6249ff72d96f4d76a87d531e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core ];

  meta = {
    description = "Package containing utility code for C++.";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
