
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, rviz-ogre-vendor, resource-retriever, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, eigen3-cmake-module, eigen, qt5, ament-cmake-gmock, ament-index-cpp, ament-cmake-cppcheck, rviz-assimp-vendor, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rviz-rendering";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_rendering/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "cd9a88775269a779c24c15dd303920eb7b023daf970854191e79d9e336136e05";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-ogre-vendor resource-retriever qt5.qtbase eigen ament-index-cpp rviz-assimp-vendor ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck rviz-assimp-vendor ament-cmake-gtest ];
  propagatedBuildInputs = [ rviz-ogre-vendor resource-retriever qt5.qtbase eigen3-cmake-module eigen ament-index-cpp rviz-assimp-vendor ];
  nativeBuildInputs = [ eigen3-cmake-module ament-cmake ];

  meta = {
    description = ''Library which provides the 3D rendering functionality in rviz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
