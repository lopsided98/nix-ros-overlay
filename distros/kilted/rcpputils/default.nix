
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-ros-core, ament-cmake-uncrustify, ament-cmake-xmllint, rcutils }:
buildRosPackage {
  pname = "ros-kilted-rcpputils";
  version = "2.13.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/kilted/rcpputils/2.13.4-2.tar.gz";
    name = "2.13.4-2.tar.gz";
    sha256 = "2253309959a73ac41daaaa1a14865f182126121f1f537a39fee7543b8d99c834";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-ros-core ];

  meta = {
    description = "Package containing utility code for C++.";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
