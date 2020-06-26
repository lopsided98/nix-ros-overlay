
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-foxy-rviz-ogre-vendor";
  version = "8.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_ogre_vendor/8.2.0-1.tar.gz";
    name = "8.2.0-1.tar.gz";
    sha256 = "3c6e893c1bcb3677cdd37a9c06fd61737a95f58e59b7ace86b7ecfa0ca2f2889";
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
