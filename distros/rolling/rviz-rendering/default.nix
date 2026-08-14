
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, assimp, eigen, eigen3-cmake-module, qt5or6, resource-retriever, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-rolling-rviz-rendering";
  version = "16.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_rendering/16.0.2-1.tar.gz";
    name = "16.0.2-1.tar.gz";
    sha256 = "95fbf4376a84ac707aa548412b7ba537ae20f6384dcbaf47fd788f78c13ea22f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common assimp ];
  propagatedBuildInputs = [ ament-cmake-ros-core ament-index-cpp assimp eigen eigen3-cmake-module qt5or6.qtbase qt5or6.qtsvg resource-retriever rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-ros-core eigen3-cmake-module ];

  meta = {
    description = "Library which provides the 3D rendering functionality in rviz.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
