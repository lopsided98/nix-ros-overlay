
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-foxy-rviz-ogre-vendor";
  version = "8.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_ogre_vendor/8.2.3-1.tar.gz";
    name = "8.2.3-1.tar.gz";
    sha256 = "ce2a258243f033abe41a2c7b67a822368db3a6dc275947602a8e73bf341f62dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ git pkg-config ];
  propagatedBuildInputs = [ freetype libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
