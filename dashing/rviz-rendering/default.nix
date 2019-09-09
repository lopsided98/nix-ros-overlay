
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-gtest, rviz-assimp-vendor, ament-cmake-cppcheck, rviz-ogre-vendor, eigen3-cmake-module, qt5, resource-retriever, ament-cmake-lint-cmake, ament-index-cpp, eigen }:
buildRosPackage {
  pname = "ros-dashing-rviz-rendering";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_rendering/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "cd9a88775269a779c24c15dd303920eb7b023daf970854191e79d9e336136e05";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-assimp-vendor qt5.qtbase rviz-ogre-vendor resource-retriever ament-index-cpp eigen ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest rviz-assimp-vendor ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-assimp-vendor qt5.qtbase rviz-ogre-vendor eigen3-cmake-module resource-retriever ament-index-cpp eigen ];
  nativeBuildInputs = [ eigen3-cmake-module ament-cmake ];

  meta = {
    description = ''Library which provides the 3D rendering functionality in rviz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
