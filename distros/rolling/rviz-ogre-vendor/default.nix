
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, freetype, glew, libGL, libGLU, xorg }:
buildRosPackage {
  pname = "ros-rolling-rviz-ogre-vendor";
  version = "15.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_ogre_vendor/15.1.15-1.tar.gz";
    name = "15.1.15-1.tar.gz";
    sha256 = "bac61edf7e0d913cfdfa154cf2772389cfb9de9e2d14b40ff46bf2b73af8b49f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ freetype glew libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
