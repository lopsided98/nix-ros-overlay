
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, rviz-ogre-vendor, resource-retriever, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, eigen, qt5, ament-cmake-gmock, ament-index-cpp, ament-cmake-cppcheck, rviz-assimp-vendor, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-rviz-rendering";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_rendering/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "a2a6fc0ae0006bfcd6b020d07c20713f58dbd9a471b5a4e0c4dfa2221bce9e00";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-ogre-vendor resource-retriever qt5.qtbase eigen ament-index-cpp rviz-assimp-vendor ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck rviz-assimp-vendor ament-cmake-gtest ];
  propagatedBuildInputs = [ rviz-ogre-vendor resource-retriever qt5.qtbase eigen ament-index-cpp rviz-assimp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library which provides the 3D rendering functionality in rviz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
