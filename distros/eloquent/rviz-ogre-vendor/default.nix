
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-eloquent-rviz-ogre-vendor";
  version = "7.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_ogre_vendor/7.0.6-1.tar.gz";
    name = "7.0.6-1.tar.gz";
    sha256 = "4eabfa987b643eed0e2a79e9d1dcc1d206fd2fc87a4e38159f8aafbb90bcd1bf";
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
