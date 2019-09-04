
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, xorg, libGLU, libGL, freetype }:
buildRosPackage {
  pname = "ros-crystal-rviz-ogre-vendor";
  version = "5.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_ogre_vendor/5.1.0-0.tar.gz;
    sha256 = "804f35dd8c1bf6183eb37bae744861da954bce63188ed3c11e1ed2bd135aecdb";
  };

  buildInputs = [ xorg.libXaw pkg-config xorg.xrandr xorg.libX11 libGLU libGL freetype ];
  propagatedBuildInputs = [ xorg.libXaw xorg.xrandr xorg.libX11 libGLU libGL freetype ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
