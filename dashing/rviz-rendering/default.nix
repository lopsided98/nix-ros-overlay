
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-gtest, rviz-assimp-vendor, ament-cmake-cppcheck, rviz-ogre-vendor, eigen, qt5, resource-retriever, ament-cmake-lint-cmake, ament-index-cpp, ament-cmake-cpplint }:
buildRosPackage rec {
  pname = "ros-dashing-rviz-rendering";
  version = "6.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_rendering/6.1.3-1.tar.gz";
    name = "6.1.3-1.tar.gz";
    sha256 = "a85b4f51bcb3eb43ce2600886ef618abe3453040e2301d1d564016345b3b3d87";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-assimp-vendor qt5.qtbase rviz-ogre-vendor resource-retriever ament-index-cpp eigen ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest rviz-assimp-vendor ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-assimp-vendor qt5.qtbase rviz-ogre-vendor resource-retriever ament-index-cpp eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library which provides the 3D rendering functionality in rviz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
