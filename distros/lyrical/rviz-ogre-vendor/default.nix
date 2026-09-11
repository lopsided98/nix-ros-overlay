
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, freetype, glew, libGL, libGLU, libx11, libxaw, libxrandr }:
buildRosPackage {
  pname = "ros-lyrical-rviz-ogre-vendor";
  version = "15.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_ogre_vendor/15.2.6-1.tar.gz";
    name = "15.2.6-1.tar.gz";
    sha256 = "bb0101294d96878a3159e44c283397ebbd3355c13384b4394f4d5cf08781e336";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype glew libGL libGLU libx11 libxaw libxrandr ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
