
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros-core, ament-cmake-uncrustify, ament-cmake-xmllint, rcutils }:
buildRosPackage {
  pname = "ros-kilted-rcpputils";
  version = "2.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/kilted/rcpputils/2.13.5-1.tar.gz";
    name = "2.13.5-1.tar.gz";
    sha256 = "52b91d4cef7617aa1c81e48a4858709aa32f4dc58303466e4ca23eac4e06c78b";
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
