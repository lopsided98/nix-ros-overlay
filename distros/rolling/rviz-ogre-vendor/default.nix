
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, freetype, libGL, libGLU, xorg }:
buildRosPackage {
  pname = "ros-rolling-rviz-ogre-vendor";
  version = "13.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_ogre_vendor/13.1.1-1.tar.gz";
    name = "13.1.1-1.tar.gz";
    sha256 = "775ff6e661ada8c06bf68c782ffab9d88af9caaffa0a288a417ad2356ea89a8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
