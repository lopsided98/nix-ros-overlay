
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, eigen, eigen3-cmake-module, qt5, resource-retriever, rviz-assimp-vendor, rviz-ogre-vendor }:
buildRosPackage {
  pname = "ros-iron-rviz-rendering";
  version = "12.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_rendering/12.4.5-1.tar.gz";
    name = "12.4.5-1.tar.gz";
    sha256 = "39ddada3c77951a524a83a448abad9aa2a76fdc4b4345f4e1662170d73cce963";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto rviz-assimp-vendor ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module qt5.qtbase resource-retriever rviz-assimp-vendor rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Library which provides the 3D rendering functionality in rviz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
