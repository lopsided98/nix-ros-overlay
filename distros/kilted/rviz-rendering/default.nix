
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, qt5, resource-retriever, rviz-assimp-vendor, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-kilted-rviz-rendering";
  version = "15.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_rendering/15.0.10-1.tar.gz";
    name = "15.0.10-1.tar.gz";
    sha256 = "ae8445f770b559d1829dd43a9d3d1e581a37e1d86455cb36b9acf8b32bfe78a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rviz-assimp-vendor ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module qt5.qtbase resource-retriever rviz-assimp-vendor rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake-ros eigen3-cmake-module ];

  meta = {
    description = "Library which provides the 3D rendering functionality in rviz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
