
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freetype, git, libGL, libGLU, pkg-config, xorg }:
buildRosPackage {
  pname = "ros-foxy-rviz-ogre-vendor";
  version = "8.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_ogre_vendor/8.2.7-1.tar.gz";
    name = "8.2.7-1.tar.gz";
    sha256 = "9c586a9e4a2991bada8017a034fd4674d0d3ce593fe19bd36f28b2cc60c37b74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git pkg-config ];
  propagatedBuildInputs = [ freetype libGL libGLU xorg.libX11 xorg.libXaw xorg.libXrandr ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around ogre3d, it provides a fixed CMake module and an ExternalProject build of ogre.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
