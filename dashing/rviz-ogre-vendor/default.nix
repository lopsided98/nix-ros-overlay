
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, xorg, libGLU, libGL, freetype }:
buildRosPackage {
  pname = "ros-dashing-rviz-ogre-vendor";
  version = "6.1.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_ogre_vendor/6.1.3-1.tar.gz;
    sha256 = "995fc406bc676e4222ede8b61038751e31a0006d3aaba99982cda1e61dc3488e";
  };

  buildType = "ament_cmake";
  buildInputs = [ xorg.libXaw pkg-config xorg.xrandr xorg.libX11 libGLU libGL freetype ];
  propagatedBuildInputs = [ xorg.libXaw xorg.xrandr xorg.libX11 libGLU libGL freetype ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
