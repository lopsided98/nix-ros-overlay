
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-dashing-rviz-ogre-vendor";
  version = "6.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_ogre_vendor/6.1.7-2.tar.gz";
    name = "6.1.7-2.tar.gz";
    sha256 = "a923f7915c696b52fa79d277645556a5a7fd4e12b657932f4a4a1bbde38831d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ freetype libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
