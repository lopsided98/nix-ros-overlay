
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, eigen, eigen3-cmake-module, qt5, resource-retriever, rviz-assimp-vendor, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rviz-rendering";
  version = "14.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz_rendering/14.1.14-1.tar.gz";
    name = "14.1.14-1.tar.gz";
    sha256 = "f87abf95f9adefff524b43f8cc4a3f6443d9c3ad9e8e87586b509ea11a0c0ea7";
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
