
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, assimp, eigen, eigen3-cmake-module, qt5, resource-retriever, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-rolling-rviz-rendering";
  version = "15.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_rendering/15.1.10-1.tar.gz";
    name = "15.1.10-1.tar.gz";
    sha256 = "c4ea9e978a4866fd574c055ce787346cf5036e49f33bd7d6d2e4790ebc1b0586";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common assimp ];
  propagatedBuildInputs = [ ament-index-cpp assimp eigen eigen3-cmake-module qt5.qtbase resource-retriever rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake-ros eigen3-cmake-module ];

  meta = {
    description = "Library which provides the 3D rendering functionality in rviz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
