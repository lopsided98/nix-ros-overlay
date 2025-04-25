
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-ros-core, ament-cmake-uncrustify, ament-cmake-xmllint, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcpputils";
  version = "2.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcpputils-release/archive/release/rolling/rcpputils/2.13.4-1.tar.gz";
    name = "2.13.4-1.tar.gz";
    sha256 = "0bffec49bdd22744f27977580d9af340314c8cfa1c52b32f7facb61bb41d426c";
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
