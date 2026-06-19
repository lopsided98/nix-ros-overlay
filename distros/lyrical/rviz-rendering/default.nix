
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, assimp, eigen, eigen3-cmake-module, qt6, resource-retriever, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rviz-rendering";
  version = "15.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_rendering/15.2.4-1.tar.gz";
    name = "15.2.4-1.tar.gz";
    sha256 = "9c7aed1a30ed36fa93ad590ed0921356ba588c19c06f333ac152155a823f7a8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common assimp ];
  propagatedBuildInputs = [ ament-index-cpp assimp eigen eigen3-cmake-module qt6.qtbase qt6.qtsvg resource-retriever rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake-ros eigen3-cmake-module ];

  meta = {
    description = "Library which provides the 3D rendering functionality in rviz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
