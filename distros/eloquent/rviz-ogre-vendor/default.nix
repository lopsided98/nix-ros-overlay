
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-eloquent-rviz-ogre-vendor";
  version = "7.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_ogre_vendor/7.0.7-1.tar.gz";
    name = "7.0.7-1.tar.gz";
    sha256 = "7604b74ff4c2a8aa6ecbeb17b3e3dec1175c870f46a21f1b4c471d3c1f7d4ae2";
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
