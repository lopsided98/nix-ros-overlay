
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-crystal-rviz-ogre-vendor";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_ogre_vendor/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "d7dc73fd16c48cd181d0fbafdb3f8b469b3e79e679333ecef3004fd03d00ffa9";
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
