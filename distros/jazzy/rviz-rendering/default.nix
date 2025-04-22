
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, eigen, eigen3-cmake-module, qt5, resource-retriever, rviz-assimp-vendor, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rviz-rendering";
  version = "14.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz_rendering/14.1.8-1.tar.gz";
    name = "14.1.8-1.tar.gz";
    sha256 = "71d631ab4681125c5505f8405e82205a941a5b0b9ac8ad3cb85e90a73f0000ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto rviz-assimp-vendor ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module qt5.qtbase resource-retriever rviz-assimp-vendor rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake-ros eigen3-cmake-module ];

  meta = {
    description = "Library which provides the 3D rendering functionality in rviz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
