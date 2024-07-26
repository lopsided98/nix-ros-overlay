
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, qt5, resource-retriever, rviz-assimp-vendor, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-rolling-rviz-rendering";
  version = "14.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_rendering/14.2.4-1.tar.gz";
    name = "14.2.4-1.tar.gz";
    sha256 = "22f05c5278444c9f16839142300fbd96d6954b93baba1c3085726b1c8227e0f8";
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
