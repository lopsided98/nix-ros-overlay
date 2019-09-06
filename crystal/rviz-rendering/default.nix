
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-gtest, rviz-assimp-vendor, ament-cmake-cppcheck, rviz-ogre-vendor, eigen, qt5, resource-retriever, ament-cmake-lint-cmake, ament-index-cpp, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-crystal-rviz-rendering";
  version = "5.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_rendering/5.1.0-0.tar.gz;
    sha256 = "96086e823a93382820f721d1ef80ed07afdef6a433d8d5bff33265ae9407b528";
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
