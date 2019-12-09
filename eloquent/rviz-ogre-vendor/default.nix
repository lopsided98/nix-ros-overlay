
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, xorg, libGLU, ament-cmake, libGL, freetype, pkg-config }:
buildRosPackage {
  pname = "ros-eloquent-rviz-ogre-vendor";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_ogre_vendor/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "93036f39643946e6325533c7758160b87cce754464984c00aa1af01a258297cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ git xorg.libX11 xorg.libXaw libGLU libGL freetype xorg.libXrandr pkg-config ];
  propagatedBuildInputs = [ xorg.libXaw xorg.libX11 libGLU libGL freetype xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
