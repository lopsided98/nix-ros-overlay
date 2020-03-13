
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-dashing-rviz-ogre-vendor";
  version = "6.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_ogre_vendor/6.1.6-1.tar.gz";
    name = "6.1.6-1.tar.gz";
    sha256 = "b60cc9018effb2e6bf18fac6b8e20aa17d46eed3248c1e0c7b95de074474f5b6";
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
