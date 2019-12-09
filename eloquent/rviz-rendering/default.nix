
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, rviz-ogre-vendor, resource-retriever, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, eigen3-cmake-module, eigen, qt5, ament-cmake-gmock, ament-index-cpp, ament-cmake-cppcheck, rviz-assimp-vendor, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-rviz-rendering";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_rendering/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "c7a44ab0fd6aa63bababcd640968d8308cd75383a69ef7a20ac1716096de9844";
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
