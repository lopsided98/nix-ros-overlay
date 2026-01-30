
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, rcutils }:
buildRosPackage {
  pname = "ros-jazzy-rcpputils";
  version = "2.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/jazzy/rcpputils/2.11.3-1.tar.gz";
    name = "2.11.3-1.tar.gz";
    sha256 = "bd3715cc2513375584ffe5d4c36db0c85203bfdcb6e09fc2f931635cf513d271";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Package containing utility code for C++.";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
